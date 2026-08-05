#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS, so this patches the
# built site directly. Run after `marimo-book build` (or `serve`), before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Header shows the AIBHS logo only — no site-name text next to it. */
.md-header__title {
  display: none !important;
}

/* The wordmark logo is wide (horizontal lockup, ~2.5:1), not square like
 * the icon-style logo the theme's default 1.85rem x 1.85rem box assumes —
 * that box squished it. Keep the height (fits the header without growing
 * it) but let width follow the image's real aspect ratio. */
.md-header__button.md-logo img {
  width: auto !important;
}
EOF
