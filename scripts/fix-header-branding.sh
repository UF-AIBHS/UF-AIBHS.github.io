#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS, so this patches the
# built site directly. Run after `marimo-book build` (or `serve`), before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Logo + "AIBHS: Faculty Hub" name, sized to fill most of the header
 * bar's height (64px / 4rem, no vertical padding) and vertically
 * centered within it. The wordmark logo (icon + "AIBHS", ~2.1:1) is
 * wide, not square like the theme's default logo box assumes, so
 * width stays auto and follows height. */
.md-header__button.md-logo {
  display: flex;
  align-items: center;
}
.md-header__button.md-logo img {
  width: auto !important;
  height: 2.5rem !important;
}
/* Material vertically centers the (single-line) title by setting
 * line-height equal to the element's own height, all the way down
 * the chain — not a transform-based trick. So height and line-height
 * have to shrink/grow *together* and stay equal at every level, or
 * the centering breaks: line-height alone (height left at the old
 * 48px) left the text sitting at the top of its box instead of
 * centered, since with a shorter line-height than its container the
 * text just flows from the top like normal block content. This
 * height must also match the logo's height above — that's what keeps
 * them aligned. */
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
.md-header__button.md-logo ~ .md-header__title {
  margin-left: 0.5rem;
}
EOF
