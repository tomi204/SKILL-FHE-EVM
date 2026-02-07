# Export and Reuse This Skill

Use this reference to share `fhe-contracts` with other users and consume it from any repo.

## Publish
```bash
git add skills/fhe-contracts
git commit -m "Make fhe-contracts skill portable for external users"
git push origin main
```

## Install in Codex on Another Machine
Preferred (from GitHub):
```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo tomi204/SKILL-FHE-EVM \
  --path skills/fhe-contracts
```
Manual fallback:
```bash
cp -R skills/fhe-contracts ~/.codex/skills/
```
Restart Codex after install so the skill is indexed.

## Use in Any Repo
- Invoke the skill by name (`fhe-contracts`) in prompts.
- Resolve placeholders before running commands:
  - `<ZAMA_REPO>`: local clone of `zama-ai/fhevm-hardhat-template`
  - `<FHENIX_REPO>`: local clone of `fhenixprotocol/cofhe-hardhat-starter`
- Keep protocol selection explicit in prompts: `Zama` or `Fhenix`.

## Agent Metadata Files
- `agents/openai.yaml`: OpenAI/Codex-facing chip metadata.
- `agents/claude.yaml`: Claude-facing metadata mapping.
- `agents/cursor.yaml`: Cursor-facing metadata mapping.

These files are transport metadata and do not change FHE behavior; keep them aligned with `SKILL.md`.
