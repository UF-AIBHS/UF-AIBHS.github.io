
# The .env Pattern

Every AIBHS project that talks to Navigator uses a local `.env` file to hold the base URL and API
key. The file is git-ignored (per the Security Guidelines) and lives at the project root, alongside
the tool that reads it.

## The File

```
ANTHROPIC_API_KEY=<your-navigator-key>
LITELLM_BASE_URL=https://api.ai.it.ufl.edu
```

Paste the Navigator key after the `=`. No quotes, no spaces around the `=`. Save the file.

**Security check.** `.env` contains a live credential. Before your first commit, confirm `.env` is
in your `.gitignore`. If you accidentally commit it, rotate the key with UF IT immediately —
deleting the commit or force-pushing is not enough. The key must be considered compromised.

## Verifying the Key and Picking a Model

Before configuring any tool, do these two curl calls. The first lists the models your key can
access; the second confirms the chat endpoint works.

List available models:

```bash
source .env

curl "$LITELLM_BASE_URL/v1/models" \
  -H "Authorization: Bearer $ANTHROPIC_API_KEY"
```

Pick the model ID you want to use from the response. Set an environment variable for convenience:

```bash
export NAV_MODEL="<the-id-you-picked>"
```

Send a test chat completion:

```bash
curl "$LITELLM_BASE_URL/v1/chat/completions" \
  -H "Authorization: Bearer $ANTHROPIC_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"$NAV_MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"say hi\"}]}"
```

Expected: a JSON response with `content` and token usage. If your model is thinking-mode, you may
also see a `reasoning_content` field. If the response comes back cleanly, the proxy is working
end-to-end and any tool failure from here is a tool-side issue.

## Test Failure With a Thinking-Mode Model

If your model ID indicates thinking mode and the curl above fails with a `BedrockException` about
temperature, add `temperature` to the request body:

```bash
-d "{\"model\":\"$NAV_MODEL\",\"temperature\":1,\"messages\":[...]}"
```

Many tools do not send a `temperature` field by default. If curl succeeds without it, the model's
default (`1`) is being used. If it fails without and works with, tool integrations will need
explicit `temperature=1` configuration.
