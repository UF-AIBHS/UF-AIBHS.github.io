
# Getting a Navigator API Key

Navigator keys are self-service through UF IT's LiteLLM dashboard at
[api.ai.it.ufl.edu/ui](https://api.ai.it.ufl.edu/ui).

## Steps

1. Go to [api.ai.it.ufl.edu/ui](https://api.ai.it.ufl.edu/ui). You're redirected to UF's standard
   GatorLink login (`login.ufl.edu`) — sign in with your GatorLink credentials and 2FA.
2. Once signed in you land on the **NaviGator AI Gateway** dashboard. Open **Virtual Keys** in the
   sidebar (this is what Navigator calls its API keys) — it lists every key you already own.

   ![Virtual Keys list: the sidebar's Virtual Keys entry, the + Create New Key button, and the existing-keys table](../../images/documents/navigator-integration-guide/navigator-virtual-keys-list.svg)

3. Click **+ Create New Key**. This opens the **Key Ownership** dialog:

   ![Key Ownership dialog: Owned By set to You, the required Team field, and the Create Key button](../../images/documents/navigator-integration-guide/navigator-create-key-dialog.svg)

   - Leave **Owned By** on **You** for a personal or course-project key.
   - **Team** is required — pick one from the dropdown. If none appear, ask your Proxy Admin (UF
     IT) to add you to a team before you can create a key.
   - **Create Key** stays disabled until a team is selected.
4. Copy the key immediately — the dashboard shows the full key value only once, at creation time.
   If you navigate away before copying it, delete the key and create a new one; there's no way to
   reveal the same key again.
5. Paste the key into your project's `.env` file as described in [The .env Pattern](env-pattern.md),
   and verify it with the `curl` calls on that page.

## Notes

- Treat the key like a password — see the security check in [The .env Pattern](env-pattern.md).
- If you lose access or leave the project, revoke the key from the same **Virtual Keys** page
  rather than leaving it active.

*(The two diagrams above are redrawn from the live dashboard, not screen captures — `api.ai.it.ufl.edu/ui`
sits behind GatorLink SSO, so a real screenshot has to come from someone with a UF login. If you're
the next person editing this page and have access, swap in actual screenshots of the Virtual Keys
list and the Create New Key dialog.)*
