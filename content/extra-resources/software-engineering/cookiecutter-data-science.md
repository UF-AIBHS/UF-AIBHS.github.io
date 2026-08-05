
# Cookiecutter Data Science: A Standard Project Skeleton

A standardized project skeleton for data science work.

## 1. What CCDS Gives You

> "A logical, flexible, and reasonably standardized project structure for doing and sharing data science work"

- Current release: v2.3.0 — requires Python 3.9+
- Maintained by DrivenData; swap in your own template or use theirs as the default

![cookiecutter-data-science.drivendata.org](../../images/extra-resources/software-engineering/ccds-homepage.png)

## 2. CCDS on GitHub, by the Numbers

- 9.9k stars · 2.6k forks · 113 watching
- MIT license · 185 commits · 10 branches · 6 tags
- Used by 153 other repositories on GitHub
- Latest merged change: "Add poetry as an env manager" (#460)

![github.com/drivendataorg/cookiecutter-data-science](../../images/extra-resources/software-engineering/ccds-github-repo.png)

## 3. CCDS on PyPI

![pypi.org/project/cookiecutter-data-science](../../images/extra-resources/software-engineering/ccds-pypi.png)

```
pip install cookiecutter-data-science
```

- Latest version 2.3.0, released Jul 23, 2025
- Author: DrivenData · License: MIT
- [pypi.org/project/cookiecutter-data-science](https://pypi.org/project/cookiecutter-data-science)

## 4. Install & Start a Project

Install once with pipx:

```
pipx install cookiecutter-data-science
```

Then, from the parent folder for your new project:

```
ccds
```

## 5. Interactive Prompts — Project Basics

Running `ccds` walks through the same prompts as the site's animated demo:

```
$ ccds https://github.com/drivendataorg/cookiecutter-data-science

project_name (project_name): My Analysis
repo_name (my_analysis): my_analysis
module_name (my_analysis):
author_name: Dat A. Scientist
description: This is my analysis of the data.
python_version_number (3.10): 3.12
```

## 6. Interactive Prompts — Environment & Tooling

```
Select dataset_storage    1-none 2-azure 3-s3 4-gcs        (1): 3
Select environment_manager  1-venv 2-conda 3-pipenv 4-uv
                            5-pixi 6-poetry 7-none        (1): 2
Select dependency_file    1-requirements.txt 2-pyproject.toml (1): 1
Select testing_framework  1-none 2-pytest 3-unittest       (1): 3
Select linting_and_formatting 1-ruff 2-flake8+black+isort (1): 1
Select open_source_license 1-none 2-MIT 3-BSD-3-Clause    (1): 2
Select docs               1-mkdocs 2-none                (1): 1
```

## 7. The Generated Structure

```
data/            <- raw, interim, processed (kept separate)
docs/            <- default mkdocs project
models/          <- trained/serialized models
notebooks/       <- 1.0-jqp-initial-data-exploration.ipynb
references/      <- data dictionaries, manuals
reports/figures/ <- generated graphics for reporting
pyproject.toml   <- package metadata + tool config
{{module_name}}/ <- dataset.py, features.py, modeling/, plots.py
```

## 8. CLI App Template

> "A cookiecutter template for creating a new Python command-line application with Click"

- 8 stars · 1 fork · MIT license · 40 commits
- Built with uv, Ruff, mypy, pre-commit

![github.com/sgraaf/cookiecutter-python-cli-app](../../images/extra-resources/software-engineering/cli-template-repo.png)

## 9. Project Pattern Template

> "Pattern — a modern, opinionated, cookiecutter template for your next Python project"

- 106 stars · 9 forks · MIT license · v2.3.0
- Docs: wyattferguson.github.io/pattern

![github.com/wyattferguson/pattern](../../images/extra-resources/software-engineering/pattern-template-repo.png)
