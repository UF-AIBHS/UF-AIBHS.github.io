#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS, so this patches the
# built site directly. Run after `marimo-book build` (or `serve`), before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* No logo is configured in book.yml, but Material still renders a
 * clickable logo button with its own default icon in that case — hide
 * it so only the "AIBHS: Faculty Hub" title shows in the header. */
.md-header__button.md-logo {
  display: none;
}
/* Material vertically centers the (single-line) title by setting
 * line-height equal to the element's own height, all the way down
 * the chain — not a transform-based trick. So height and line-height
 * have to shrink/grow *together* and stay equal at every level, or
 * the centering breaks: line-height alone (height left at the old
 * 48px) left the text sitting at the top of its box instead of
 * centered. */
.md-header__title,
.md-header__title .md-header__ellipsis,
.md-header__title .md-header__topic,
.md-header__title .md-ellipsis {
  height: 2.5rem !important;
  line-height: 2.5rem !important;
}
.md-header__title {
  font-size: 1.6rem;
}
EOF
