
# Using Claude Code

With the shell script in place (see [The claude-litellm Shell Script](claude-litellm-script.md)),
Claude Code launches from any project directory that has a `.env` file:

```bash
cd my-project
claude-litellm
```

Because the script `exec`s into `claude`, any Claude Code arguments you would normally pass get
forwarded:

```bash
claude-litellm --resume    # resume the last session
claude-litellm --continue  # continue from a saved point
```

Claude Code uses whichever model your Navigator key is configured for. Costs and usage are
metered by UF IT via LiteLLM.
