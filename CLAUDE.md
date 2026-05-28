# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal technical blog and portfolio site for Ilia Pavlovskii (Senior Android Engineer). Built with [MkDocs](https://www.mkdocs.org/) + [Material theme](https://squidfunk.github.io/mkdocs-material/). Content is bilingual (English and Russian). The generated static HTML lives at the repo root and is served via GitHub Pages.

## Build Commands

**Install dependencies (first time only):**
```bash
pip install mkdocs mkdocs-material
```

**Local development server with live reload:**
```bash
mkdocs serve -f blog/src/mkdocs.yml
```

**Build and publish to repo root (what gets deployed):**
```bash
./run.sh
```
This runs `mkdocs build -c -f blog/src/mkdocs.yml`, then copies the generated site from `blog/src/site/` to the repo root and removes the temp `site/` folder.

**Build via Docker (no local Python needed):**
```bash
docker build -t mkdocs .
```

There are no automated tests or lint steps.

## Architecture

Content lives in `blog/src/docs/` and is organized by topic and language:
```
blog/src/docs/
  index.md                        # Home page
  android/english/                # Android articles in English
  android/russian/                # Same articles in Russian
  other/english/                  # Non-technical articles in English
  other/russian/                  # Non-technical articles in Russian
```

Navigation is declared explicitly in `blog/src/mkdocs.yml` — adding a new page requires both creating the markdown file under `blog/src/docs/` **and** adding an entry to the `nav:` section in `mkdocs.yml`.

The generated static site (HTML/CSS/JS at the repo root) is committed to `main` and served directly by GitHub Pages. Do not manually edit root-level HTML — it is overwritten by `./run.sh`.