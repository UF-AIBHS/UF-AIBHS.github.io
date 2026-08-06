#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS, so this patches the
# built site directly. Run after `marimo-book build` (or `serve`), before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Logo + "AIBHS: Faculty Hub" name, sized so the two visually sit on
 * the same line. The wordmark logo (icon + "AIBHS", ~2.1:1) is wide,
 * not square like the theme's default logo box assumes, so width
 * stays auto and follows height. Height is tuned to match the title
 * text's glyph size, not just its (much taller) line-box — at the
 * previous 2.8rem the logo image filled its box edge-to-edge while
 * the small title text sat centered in a lot of empty line-height
 * space, so the pairing looked misaligned even though both boxes
 * shared a center. */
.md-header__button.md-logo {
  display: flex;
  align-items: center;
}
.md-header__button.md-logo img {
  width: auto !important;
  height: 1.6rem !important;
}
.md-header__title {
  font-size: 1.05rem;
  display: flex;
  align-items: center;
}
.md-header__button.md-logo ~ .md-header__title {
  margin-left: 0.5rem;
}
EOF
