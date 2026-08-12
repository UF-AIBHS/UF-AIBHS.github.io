
# Keeping Secrets Out of Git: .env & python-dotenv

Never commit a secret to git.

## 1. The Problem With Hardcoded Secrets

- API keys and passwords typed into source code end up in git history forever
- Deleting the line later doesn't remove it from past commits
- Bots scan public GitHub repos for leaked secrets within minutes

## 2. Keep Secrets in a .env File

```
API_KEY=abc123
```

## 3. Load It With python-dotenv

```python
from dotenv import load_dotenv
import os

load_dotenv()
api_key = os.getenv("API_KEY")
```

## 4. python-dotenv on PyPI

- Version 1.2.2, released Mar 1, 2026
- 8,827 stars · 546 forks · License: BSD-3-Clause
- Requires Python >=3.10

![python-dotenv on PyPI](../../images/extra-resources/software-engineering/pypi-dotenv.png)

[pypi.org/project/python-dotenv](https://pypi.org/project/python-dotenv)

## 5. Keep .env Out of Git

```
echo ".env" >> .gitignore
```

- Add it before your first commit, not after
- Combine with [gitignore.io's Python template](git-github-desktop.md#20-generate-one-instead-of-writing-it)

See [The .env Pattern](../../documents/navigator-integration-guide/env-pattern.md) for how AIBHS projects apply this when talking to Navigator.
