
# VS Code + Cline

Cline is an agentic coding extension for VS Code. It reads files, edits them, and runs commands
autonomously. This is the validated setup for connecting Cline to Navigator.

## Prerequisites

- VS Code installed
- The `.env` file created (see [The .env Pattern](env-pattern.md)) and the curl tests passing
- The model ID you picked from the `/v1/models` response, and knowledge of whether it is a
  thinking-mode model
- Your Navigator key handy

## Installation

1. Open VS Code.
2. Open the Extensions panel (`Ctrl+Shift+X` on Windows/Linux, `Cmd+Shift+X` on macOS, or the
   four-square icon in the left sidebar).
3. Search for **Cline**.
4. Install the extension published in the VS Code left sidebar.
5. A Cline icon appears in the VS Code left sidebar. Click it to open Cline.

## Configuration

6. With Cline open, click the **gear icon in the top right** of the Cline panel to open its
   settings.
7. Set **API Provider** to **OpenAI Compatible**.

**Why OpenAI Compatible and not LiteLLM.** Cline offers a dedicated LiteLLM provider, but that
provider tries to fetch model metadata from a LiteLLM admin endpoint that requires elevated
permissions. UF IT-issued user keys don't have those permissions and get a `403 Forbidden` error.
OpenAI Compatible skips that metadata fetch and just calls the chat endpoint, which works fine.

Fill in the remaining fields:

| Field | Value |
| --- | --- |
| **Base URL** | `https://api.ai.it.ufl.edu/v1` |
| **API Key** | Your Navigator key (same value as `ANTHROPIC_API_KEY` in your `.env`) |
| **Model ID** | The model ID you picked from the `/v1/models` response |
| **Temperature** | Set to `1` IF your model is a thinking-mode model. Otherwise leave at Cline's default. |

**Thinking-mode models require temperature = 1.** If your Navigator model runs in extended
thinking mode, any request with temperature ≠ 1 is rejected with a `BedrockException`. Cline's
default temperature is not 1, so you must set it explicitly. This is a Claude thinking-mode
constraint, not a Cline or Navigator issue. If your model is NOT thinking-mode, leave temperature
at Cline's default — no override needed.

8. Save the configuration.
9. Cline is now connected. Test with a simple prompt before running any real task.

## Testing That It Works

Before pointing Cline at real AIBHS code, create a scratch directory and test in isolation. Cline
is agentic and will read and modify files without much ceremony.

```bash
mkdir ~/cline-test && cd ~/cline-test
code .
```

In the new VS Code window, open Cline and enter a simple test prompt:

> Create a file called hello.py that prints "hello from Cline" and then run it.

If Cline creates the file, asks permission to run it, runs it, and shows the output — chat, tool
calls (`write_file`, `execute_command`), and streaming are all functional. You are done.

## Known Caveats and Their Causes

- **Thinking-mode models are slow.** Extended thinking models reason internally on every request.
  Not a Cline bug — expected behavior. If speed matters and your key is on a thinking-mode model,
  ask UF IT whether a non-thinking model is available.
- **Temperature setting is not optional on thinking-mode models.** If it's missing, wrong, or
  reset to Cline's default after an extension update, every request fails. Verify temperature is 1
  if a thinking-mode setup suddenly stops working.
- **Do not use the LiteLLM provider.** It requires model-info admin permissions that Navigator
  user keys do not have. Use OpenAI Compatible instead.
- **Do not use the Anthropic provider.** It hits `api.anthropic.com` directly, bypassing
  Navigator. Your Navigator key is not a valid Anthropic key and will fail.
