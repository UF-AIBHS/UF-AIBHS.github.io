
# Virtual Environments: Isolating Project Dependencies

Isolate each project's dependencies.

## 1. Why Isolate Dependencies

- Two projects can need different versions of the same package (pandas 1.5 vs 2.1)
- Installing everything globally means one upgrade can break an unrelated project
- A virtual environment gives each project its own private set of installed packages

## 2. Official Docs: venv

> "Creates lightweight virtual environments, each with their own independent set of Python packages installed
> in their site directories"

Added in Python 3.3 · recommended tool since 3.5.

![venv docs](../../images/extra-resources/software-engineering/venv-docs.png)

```
python -m venv /path/to/new/virtual/environment
```

[docs.python.org/3/library/venv.html](https://docs.python.org/3/library/venv.html)

## 3. Pick a Tool

- **venv** — built into Python, no install needed
- **conda / mamba** — manages Python itself plus packages
- **poetry / uv** — modern dependency + packaging managers
- CCDS asks which one you want when it scaffolds a project (see
  [Cookiecutter Data Science](cookiecutter-data-science.md))

## 4. Typical Workflow

```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```
