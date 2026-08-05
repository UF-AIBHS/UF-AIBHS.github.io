#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom JS either — same limitation
# as the CSS scripts, so this patches the built site's JS directly. Run
# after `marimo-book build` (or `serve`), before deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/javascripts/marimo_book.js <<'EOF'

// Sidebar sections needed two clicks to expand. Setting the JS
// `indeterminate` property to false is necessary but not sufficient —
// tested directly: even with `indeterminate` confirmed false, a
// checkbox that was ever rendered/laid-out with indeterminate=true
// still eats its very first real click (browser-internal "first
// activation" state, apparently cached at layout time, that a later
// property write alone doesn't invalidate). Every click after that
// first one toggles correctly. Confirmed by clicking the same toggle
// 5x in a row: 1st click did nothing, then true/false/true/false/true
// — a perfectly normal alternating toggle from click 2 onward.
//
// Fix: burn that one wasted click programmatically, on every toggle,
// before the user ever touches the sidebar — click it twice (nets to
// the same checked state, so nothing visibly changes) with the
// section's collapse transition disabled for that instant so there's
// no flash of it opening/closing.
function primeNavToggles() {
  document.querySelectorAll(".md-nav__toggle").forEach((el) => {
    el.indeterminate = false;
    const nav = el.parentElement.querySelector(":scope > .md-nav");
    const originalChecked = el.checked;
    if (nav) nav.style.transition = "none";
    el.click();
    el.click();
    if (el.checked !== originalChecked) el.checked = originalChecked;
    if (nav) {
      void nav.offsetHeight; // force reflow so transition:none applies before it's removed
      nav.style.transition = "";
    }
  });
}
if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", primeNavToggles);
} else {
  primeNavToggles();
}
if (typeof document$ !== "undefined" && document$.subscribe) {
  document$.subscribe(primeNavToggles);
}
EOF
