# Polyglot

Official downloads for the Polyglot CLI and agent skill.

## Install the CLI

```sh
brew install polyglot-i18n/tap/polyglot
```

For other installation methods, see [getting started](https://getpolyglot.ai/docs/getting-started).
The agent skill requires CLI **0.14.2 or later**. Confirm with `polyglot --version`.

## Install the official agent skill

The portable skill guides coding agents through static scanning, saved migration
plans, scoped translation and runtime verification. It supports Next.js, Astro,
SvelteKit, Vue, Angular, React Native and Flutter. An audit request remains a
read-only audit. Scanning and local planning do not require an account.

Download the [tar.gz archive](https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.tar.gz)
([SHA-256](https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.tar.gz.sha256))
or [Windows ZIP](https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.zip)
([SHA-256](https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.zip.sha256)).
These public downloads require no GitHub access.

For Codex on macOS/Linux:

```sh
skill_download=$(mktemp -d)
curl -fSL https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.tar.gz -o "$skill_download/polyglot-skill-v0.14.2.tar.gz"
curl -fSL https://releases.getpolyglot.ai/v0.14.2/polyglot-skill-v0.14.2.tar.gz.sha256 -o "$skill_download/polyglot-skill-v0.14.2.tar.gz.sha256"
(cd "$skill_download" && shasum -a 256 -c polyglot-skill-v0.14.2.tar.gz.sha256) &&
  tar -xzf "$skill_download/polyglot-skill-v0.14.2.tar.gz" -C "$skill_download"
mkdir -p ~/.agents/skills
# Inspect an existing skill before replacing it.
test ! -e ~/.agents/skills/polyglot && cp -R "$skill_download/polyglot" ~/.agents/skills/
```

On Windows, compare `Get-FileHash -Algorithm SHA256` with the checksum sidecar,
extract with `Expand-Archive`, then copy the enclosed `polyglot` folder to
`$HOME/.agents/skills`. To scope it to one project, use that project's
`.agents/skills` directory instead. Keep `SKILL.md` and `agents/openai.yaml`
together. Restart the agent client if needed to discover the new skill.

Invoke it as `$polyglot`, for example: “Use $polyglot to audit this Next.js app”
or “Use $polyglot to add German to this app.” Other Agent Skills clients can
install the same folder through their supported installation mechanism.

The CLI release workflow publishes versioned archives and checksums, plus
`latest/polyglot-skill-latest.tar.gz` and `.zip` aliases on the download service.
Use versioned URLs for reproducible installations.
