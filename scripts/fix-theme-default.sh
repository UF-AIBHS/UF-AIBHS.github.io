#!/usr/bin/env bash
# marimo-book's book.yml has no hook for the palette's `media` key (only
# theme.palette.primary/accent), so mkdocs-material ships with light/dark
# following the OS's prefers-color-scheme on first visit. Strip `media`
# from _site_src/mkdocs.yml and rebuild so the site always opens light,
# with the header toggle still available to switch to dark manually.
# Also enables `toc.integrate` (no book.yml hook for theme.features either):
# merges each page's on-page table of contents into the left primary nav,
# under that page's entry, instead of a separate right-hand panel — used so
# multi-section pages (e.g. Orientation) show their headings as a left-side
# TOC.
# Must run before fix-header-branding.sh / fix-theme-css.sh, since
# `mkdocs build` cleans and regenerates _site/, wiping their patches.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - <<'EOF'
import yaml

path = "_site_src/mkdocs.yml"
with open(path) as f:
    cfg = yaml.safe_load(f)
for entry in cfg["theme"]["palette"]:
    entry.pop("media", None)
if "toc.integrate" not in cfg["theme"]["features"]:
    cfg["theme"]["features"].append("toc.integrate")
with open(path, "w") as f:
    yaml.safe_dump(cfg, f, sort_keys=False, allow_unicode=True)
EOF

python3 -m mkdocs build --config-file _site_src/mkdocs.yml
