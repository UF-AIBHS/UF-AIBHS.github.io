#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom JS either — same limitation
# as the CSS scripts, so this patches the built site's JS directly. Run
# after `marimo-book build` (or `serve`), before deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/javascripts/marimo_book.js <<'EOF'

// Sidebar sections needed two clicks to expand: navigation.expand marks
// every non-active-path section's toggle checkbox with the JS
// `indeterminate` property (not just the `.md-toggle--indeterminate`
// CSS class) at build time. Clicking an indeterminate checkbox is a
// well-known browser quirk: the click's own activation step reads
// `indeterminate` before any same-gesture handler (mousedown/pointerdown,
// even capture-phase) can clear it, so it only clears `indeterminate`
// and doesn't toggle `checked` — the *next* click is the one that
// actually opens the section. Fix: clear it proactively, once per page
// render, before the user ever clicks — not reactively during the click.
// Hooked the same way this file's own widget re-init is (document$ for
// instant-nav, DOMContentLoaded/immediate for the first load).
function clearNavToggleIndeterminate() {
  document.querySelectorAll(".md-nav__toggle").forEach((el) => {
    el.indeterminate = false;
  });
}
if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", clearNavToggleIndeterminate);
} else {
  clearNavToggleIndeterminate();
}
if (typeof document$ !== "undefined" && document$.subscribe) {
  document$.subscribe(clearNavToggleIndeterminate);
}
EOF
