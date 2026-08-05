#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS, so this patches the
# built site directly. Run after `marimo-book build` (or `serve`), before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Logo + "AIBHS: Faculty Hub" name, both bigger and clearly visible in
 * the header's top-left corner. The wordmark logo (icon + "AIBHS", ~2.1:1)
 * is wide, not square like the theme's default logo box assumes, so width
 * stays auto and follows the taller height. */
.md-header__button.md-logo img {
  width: auto !important;
  height: 2.8rem !important;
}
.md-header__title {
  font-size: 1.05rem;
}
.md-header__button.md-logo ~ .md-header__title {
  margin-left: 0.5rem;
}
EOF
