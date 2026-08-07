
# Quick Reference

For students who want the summary and none of the reasoning:

| Setting | Value |
| --- | --- |
| **Proxy URL** | `https://api.ai.it.ufl.edu` |
| **OpenAI-compat endpoint** | `https://api.ai.it.ufl.edu/v1` |
| **How to find your model ID** | `GET /v1/models` with `Authorization: Bearer <key>` |
| **Temperature (thinking-mode)** | `1` (required — otherwise `BedrockException`) |
| **Temperature (non-thinking)** | Use the tool's default. No override needed. |
| **Auth header** | `Authorization: Bearer <navigator-key>` |
