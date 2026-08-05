#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS (only theme.palette and
# theme.font.text/code), so this patches the built site directly, same
# pattern as fix-header-branding.sh. Run after `marimo-book build` (or
# `serve`), before deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Site font: Palatino Linotype, with a serif fallback stack for systems
 * that don't have it installed (it's not on Google Fonts, so the
 * theme.font.text book.yml hook would 404 trying to fetch it — set the
 * family directly instead). */
body, .md-typeset, .md-header, .md-nav, .md-tabs {
  font-family: "Palatino Linotype", Palatino, "Book Antiqua", Georgia, serif !important;
}

/* Tighter paragraph/heading rhythm — default theme spacing (line-height
 * ~1.7 plus equal margin-top+margin-bottom on every paragraph) reads as
 * excessive dead space. Margin-bottom only avoids doubling the gap
 * between adjacent elements. */
.md-typeset {
  line-height: 1.5;
}
.md-typeset p,
.md-typeset ul,
.md-typeset ol,
.md-typeset dl {
  margin-top: 0;
  margin-bottom: 0.6em;
}
.md-typeset h1 { margin-bottom: 0.6em; }
.md-typeset h2 { margin-top: 1.1em; margin-bottom: 0.5em; }
.md-typeset h3 { margin-top: 0.9em; margin-bottom: 0.4em; }

/* Dark mode: the active/current sidebar entry uses the raw UF-blue
 * primary color (#0021A5) as text color, which is close to unreadable
 * against the near-black background (~1.6:1 contrast). Lighten it for
 * the dark scheme only; light mode's white background is unaffected. */
[data-md-color-scheme="slate"] .md-nav__link--active,
[data-md-color-scheme="slate"] .md-nav__link--active .md-nav__icon,
[data-md-color-scheme="slate"] .md-nav__item--section > .md-nav__link[for] {
  color: #7086ff !important;
}

/* Keep every section/subsection expanded in the sidebar at every
 * viewport width. Material's navigation.expand only force-expands
 * sections at desktop widths (min-width: 76.25em); below that, the
 * drawer nav collapses siblings to just the active page's ancestor
 * chain, which reads as the nav "losing" subsections when navigating
 * into a nested section's Overview page. */
.md-nav__item--section > .md-nav,
.md-nav__item--nested > .md-nav {
  display: block !important;
  opacity: 1 !important;
  visibility: visible !important;
  grid-template-rows: 1fr !important;
}

/* The drawer (viewport < 76.25em, which includes most non-maximized
 * laptop windows, not just phones) goes further than plain collapsing:
 * Material's JS adds a `.md-nav--lifted` class that drops to a
 * single-level "drill-down" view — CSS hides every sibling list item
 * except the active one, replaced by a back arrow. That's a bigger
 * navigation change than simple collapsing and is what actually matches
 * the "navigation pane changes and loses its subsections" report.
 * Un-hide the siblings Material's own CSS hides for that state. */
.md-nav--lifted > .md-nav__list > .md-nav__item {
  display: block !important;
}
.md-nav--lifted > .md-nav__title {
  display: block !important;
}
EOF
