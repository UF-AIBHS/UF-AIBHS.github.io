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

/* Sections should collapse/expand on click like a normal accordion —
 * navigation.expand instead pins every section permanently open two
 * ways: an unconditional `display:block` rule, and by baking a
 * `.md-toggle--indeterminate` class onto every section's toggle at
 * build time (not just the active path), which Material's own CSS also
 * treats as "expanded" regardless of the checkbox. That combination is
 * why clicking a Faculty Handbook / Orientation section did nothing.
 * Re-implement checkbox-driven show/hide keyed on `:checked` alone —
 * genuinely active-path ancestors get a real `checked` attribute at
 * build time, so they still auto-expand on load; everything else
 * starts collapsed and responds to clicks like a normal accordion. */
.md-nav__item--section > .md-nav__toggle ~ .md-nav,
.md-nav__item--nested > .md-nav__toggle ~ .md-nav {
  display: grid !important;
  grid-template-rows: minmax(0.4rem, 0fr) !important;
  opacity: 0 !important;
  visibility: collapse !important;
}
.md-nav__item--section > .md-nav__toggle:checked ~ .md-nav,
.md-nav__item--nested > .md-nav__toggle:checked ~ .md-nav {
  grid-template-rows: minmax(0.4rem, 1fr) !important;
  opacity: 1 !important;
  visibility: visible !important;
}

/* Top-level section headers (e.g. "Documents", "Extra Resources") are a
 * separate problem from the above: Material's base CSS treats
 * `navigation.sections` top-level labels as static, non-interactive
 * category dividers — `pointer-events: none` and `cursor: default` on
 * the label — so even with the toggle rule above, clicking one never
 * reaches the checkbox at all. Restore normal clickability so every
 * level, not just subsections, responds to a click. */
.md-nav__item--section > label.md-nav__link {
  pointer-events: auto !important;
  cursor: pointer !important;
}
/* Material also hides the chevron icon on section labels (display:none)
 * since static dividers have nothing to indicate — restore it so a
 * collapsible top-level section actually looks collapsible. */
.md-nav__item--section > label.md-nav__link .md-nav__icon {
  display: inline-block !important;
}

/* marimo-book's default link style sets the *resting* color to
 * --md-default-fg-color (same as body text) and only shifts to the
 * accent color on hover/focus — combined with no underline at rest,
 * links were visually identical to plain text. Use the theme's link
 * color (book.yml's primary, injected into --md-typeset-a-color) at
 * rest, plus an underline, so links are recognizable without hovering
 * and without relying on color alone. */
.md-typeset a:not(.md-button):not(.headerlink) {
  color: var(--md-typeset-a-color);
  text-decoration: underline;
  text-underline-offset: 0.15em;
}

/* Links to an actual downloadable file (PDF/Word/etc, matched by
 * extension — covers "Download the PDF" links and any other file link)
 * get the accent color instead of the primary link color, so a click
 * that downloads a file reads differently at a glance than a click that
 * navigates to another page. */
.md-typeset a:not(.md-button):not(.headerlink)[href$=".pdf"],
.md-typeset a:not(.md-button):not(.headerlink)[href$=".docx"],
.md-typeset a:not(.md-button):not(.headerlink)[href$=".doc"],
.md-typeset a:not(.md-button):not(.headerlink)[href$=".xlsx"],
.md-typeset a:not(.md-button):not(.headerlink)[href$=".pptx"],
.md-typeset a:not(.md-button):not(.headerlink)[href$=".zip"] {
  color: var(--md-accent-fg-color);
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

/* Shrink the footer — the default prev/next card row's generous margins,
 * title font-size, and copyright padding made it read as an oversized
 * block relative to the rest of the page. */
.md-footer__link {
  margin-top: 0.4rem;
  margin-bottom: 0.2rem;
}
.md-footer__title {
  font-size: 0.76rem;
  margin-bottom: 0.3rem;
}
.md-footer__button svg {
  width: 0.9rem;
  height: 0.9rem;
}
.md-copyright {
  font-size: 0.6rem;
  padding: 0.25rem 0;
}
EOF
