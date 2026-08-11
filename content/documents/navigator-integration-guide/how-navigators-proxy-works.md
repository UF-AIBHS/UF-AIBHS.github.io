
# How Navigator's Proxy Works

UF IT operates a LiteLLM proxy at [api.ai.it.ufl.edu](https://api.ai.it.ufl.edu) that gives AIBHS
projects a unified way to call Claude and other models. This is what the AI Models Guidelines
refers to as the Navigator Toolkit endpoint.

## Two API Surfaces on the Same Proxy

- **OpenAI-compatible endpoint** at `/v1/chat/completions` — what most tools speak: Cline, Aider,
  Cursor, Continue, Zed, etc.
- **Anthropic pass-through endpoint** at the proxy root — what Claude Code speaks natively,
  configured via `ANTHROPIC_BASE_URL`.

Both are backed by the same LiteLLM router. Requests eventually hit AWS Bedrock, which serves the
Claude models. From the client's perspective this is invisible — the proxy translates as needed.

## Authentication

Every request needs a bearer token in the `Authorization` header. Navigator keys are self-service
through UF IT's dashboard — see [Getting a Navigator API Key](getting-an-api-key.md). Store the
key in a project-local `.env` file (see [The .env Pattern](env-pattern.md)).

## Which Models Are Available to Your Key

The model catalog available to an AIBHS key can change as UF IT updates the Navigator
configuration. Do not assume a specific model ID — always discover the current one for your key
with:

```bash
source .env

curl "$LITELLM_BASE_URL/v1/models" \
  -H "Authorization: Bearer $ANTHROPIC_API_KEY"
```

The response is a JSON list of every model your key is allowed to call. Copy the `id` field of the
model you want — that string is what every tool integration needs. Throughout this guide, that
string is referred to as "your model ID."

**Thinking-mode models have a hard constraint.** If your model ID contains `-thinking` or
otherwise indicates extended thinking / reasoning mode, the model requires temperature to be
exactly `1`. Any other temperature value is rejected with a `BedrockException`. Most coding tools
default to temperature `0` or `0.2` for deterministic output — with a thinking-mode model, you
must override that default to `1` or every request fails. If your model ID does NOT indicate
thinking mode, tools work with their default temperature settings and no override is needed. Check
this before configuring any tool.
