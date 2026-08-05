# AIBHS

Site source for the [AIBHS](https://uf-aibhs.github.io/) program page — Artificial Intelligence in
Biomedical and Health Sciences, University of Florida College of Medicine, offered through the
[AI for Health Institute](https://ic3.center.ufl.edu/education/aibhs/).

Built with [marimo-book](https://marimobook.org/).

## Local development

```bash
pip install marimo-book

# Live-reload dev server
marimo-book serve

# One-shot build (emits ./_site/)
marimo-book build

# Validate book.yml + content without building
marimo-book check
```

## Layout

- `book.yml` — table of contents, theme, branding
- `content/` — page Markdown, one file per nav entry (see `book.yml`'s `toc:`)
- `images/`, `data/` — static assets (logos, banners, downloadable PDFs) copied verbatim into the built site
- `.github/workflows/build-site.yml` — builds and publishes to GitHub Pages on every push to `main`

Deployed automatically via GitHub Actions on push to `main`.
