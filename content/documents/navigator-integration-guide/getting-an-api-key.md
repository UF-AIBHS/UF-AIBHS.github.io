
# Getting a Navigator API Key

Navigator keys are self-service through UF IT's LiteLLM dashboard at
[api.ai.it.ufl.edu/ui](https://api.ai.it.ufl.edu/ui).

## Steps

1. Go to [api.ai.it.ufl.edu/ui](https://api.ai.it.ufl.edu/ui). You're redirected to UF's standard
   GatorLink login (`login.ufl.edu`) — sign in with your GatorLink credentials and 2FA.
2. Once signed in you land on the LiteLLM dashboard. Open **API Keys** in the sidebar.
3. Click **+ Create New Key**, give it a name (e.g. `aibhs-<your-course-or-project>`), and confirm.
4. Copy the key immediately — LiteLLM shows the full key value only once, at creation time. If you
   navigate away before copying it, delete the key and create a new one; there's no way to reveal
   the same key again.
5. Paste the key into your project's `.env` file as described in [The .env Pattern](env-pattern.md),
   and verify it with the `curl` calls on that page.

## Notes

- Treat the key like a password — see the security check in [The .env Pattern](env-pattern.md).
- If you lose access or leave the project, revoke the key from the same **API Keys** page rather
  than leaving it active.

*(This page still needs screenshots of the actual dashboard — API access here requires GatorLink
SSO, so they have to come from someone with a UF login. If you're the next person editing this
page, drop screenshots of the API Keys tab and the Create New Key dialog in
`images/documents/navigator-integration-guide/` and reference them here.)*
