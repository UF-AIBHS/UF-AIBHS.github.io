
# Cursor — Tested and Not Recommended

Cursor was evaluated as a possible AIBHS-supported tool. Testing revealed two limitations that
together make it a poor fit for AIBHS's use of Navigator.

## Limitation 1 — Model Name Validation Rejects Navigator Model IDs

Cursor's custom OpenAI provider maintains an internal allowlist of model names it will accept and
route. Names outside that allowlist are rejected before the request goes out with an error like:

```
Model name is not valid: "<your-model-id>"
```

This is not a configuration issue — it is a documented Cursor behavior confirmed by multiple bug
reports on the Cursor community forum from users trying to integrate other LiteLLM-style proxies.
Cursor validates model names client-side against patterns it recognizes; anything else fails, even
if the endpoint itself would accept the name. Because Navigator's model catalog uses non-standard
IDs specific to UF IT's LiteLLM configuration, Cursor rejects them.

## Limitation 2 — Only Chat Mode Routes Through the Custom Endpoint

More significantly: even if the model-name validation problem were solved, only Cursor's Chat /
Plan panel (`Ctrl+L`) would use Navigator. The core coding features of Cursor are locked to
Cursor's own paid backend:

| Cursor feature | Where it routes |
| --- | --- |
| Chat / Plan mode (`Ctrl+L`) | Custom endpoint (Navigator, if it worked) |
| Composer / Coding agent | Cursor's backend (requires Cursor Pro) |
| Inline Edit (`Ctrl+K`) | Cursor's backend (requires Cursor Pro) |
| Autocomplete / Tab completion | Cursor's backend (requires Cursor Pro) |
| Apply / Edit suggestions | Cursor's backend (requires Cursor Pro) |

**Why this makes Cursor incompatible with AIBHS's setup.** Every feature that makes Cursor useful
for coding — autocomplete, inline edits, the Composer agent — is architecturally locked to
Cursor's own backend and requires a Cursor Pro subscription. The custom OpenAI endpoint only
powers the chat panel. So AIBHS students on Cursor would need both a Cursor Pro subscription AND
Navigator access, with Navigator only handling one small feature. This is a design decision on
Cursor's part, not something that can be configured around.

## Recommendation

AIBHS students should use [VS Code + Cline](vscode-cline.md) instead. Cline is free, runs entirely
on Navigator, covers the same coding-agent ground as Cursor's Composer, and doesn't split features
between an owned backend and the user's endpoint. Students who prefer Cursor's UX specifically will
need to accept that they are paying for Cursor Pro on top of using Navigator, and only the chat
panel will actually use Navigator — that trade-off is theirs to make personally, but AIBHS does
not recommend or support it.
