
# The claude-litellm Shell Script

Recommended pattern for running Claude Code (and any future CLI tool that speaks Anthropic's API
format) against Navigator. The script reads `.env`, exports the correct environment variables, and
hands off to the underlying binary.

## The Script

Save this as `claude-litellm` somewhere on your PATH (typically `~/.local/bin/claude-litellm`),
then `chmod +x` to make it executable:

```bash
#!/usr/bin/env bash
# Run Claude Code routed through the LiteLLM proxy defined in ./.env
# Expects ANTHROPIC_API_KEY and LITELLM_BASE_URL in .env.
set -euo pipefail

if [ ! -f .env ]; then
  echo "claude-litellm: no .env in $(pwd)" >&2
  exit 1
fi

set -a
# shellcheck disable=SC1091
source .env
set +a

: "${LITELLM_BASE_URL:?LITELLM_BASE_URL missing from .env}"
: "${ANTHROPIC_API_KEY:?ANTHROPIC_API_KEY missing from .env}"

export ANTHROPIC_BASE_URL="$LITELLM_BASE_URL"
export ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_API_KEY"
unset ANTHROPIC_API_KEY

exec claude "$@"
```

## What Each Part Does

- **`set -euo pipefail`** makes the script fail loudly on any error, unset variable, or pipe
  failure. Prevents silent-fail scenarios where the wrong key gets used.
- **The `.env` existence check** keeps the script from accidentally running with system-level env
  vars if the local `.env` is missing.
- **`set -a` / `source` / `set +a`** temporarily marks all sourced variables for export. Standard
  pattern for loading `.env` files in bash.
- **The two `${VAR:?}` assertions** require both variables to exist and be non-empty. If either is
  missing, the script fails with a clear message.
- **`ANTHROPIC_BASE_URL`** is what Claude Code reads to decide which host to talk to. Setting it
  here routes traffic through Navigator instead of `api.anthropic.com`.
- **`ANTHROPIC_AUTH_TOKEN` (not `ANTHROPIC_API_KEY`)** is the correct variable for a proxy key.
  Claude Code treats `ANTHROPIC_API_KEY` as a real Anthropic key and validates it against
  Anthropic's format. `ANTHROPIC_AUTH_TOKEN` is passed through as a bearer token, which is what
  Navigator expects.
- **`unset ANTHROPIC_API_KEY`** removes the raw key from the child process's environment. Only
  `ANTHROPIC_AUTH_TOKEN` is exported to Claude Code.
- **`exec claude "$@"`** replaces the shell process with Claude Code, passing through any
  arguments. `exec` is used so signals propagate correctly.
