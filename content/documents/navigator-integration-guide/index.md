
# Navigator Integration Guide

Validated setup for connecting coding tools to UF's Navigator proxy — Claude Code and VS Code +
Cline both work; Cursor was tested and found incompatible.

## Recommendation

AIBHS students working with Claude through UF's Navigator proxy should use one of two paths:

| Recommended tool | When to use it |
| --- | --- |
| **VS Code + Cline** | Default choice for most students. Agentic coding in the IDE they'll already be using. See [VS Code + Cline](vscode-cline.md). |
| **Claude Code via shell script** | For CLI users, long-running agentic tasks, or working outside VS Code. See [The claude-litellm Shell Script](claude-litellm-script.md) and [Using Claude Code](using-claude-code.md). |
| **Cursor** | Not recommended. Two blocking limitations documented in [Cursor — Tested and Not Recommended](cursor-not-recommended.md). |

Its sections:

- [How Navigator's Proxy Works](how-navigators-proxy-works.md)
- [Getting a Navigator API Key](getting-an-api-key.md)
- [The .env Pattern](env-pattern.md)
- [The claude-litellm Shell Script](claude-litellm-script.md)
- [Using Claude Code](using-claude-code.md)
- [VS Code + Cline](vscode-cline.md)
- [Cursor — Tested and Not Recommended](cursor-not-recommended.md)
- [Quick Reference](quick-reference.md)
