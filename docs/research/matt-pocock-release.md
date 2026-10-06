# Matt Pocock skills update

Checked on 2026-10-05 against release tag `v1.3.1`, commit `24fe0ef`. GitHub published `v1.3.0` and `v1.3.1` on October 4. The changelog places the additions, removal, and glossary rename in `1.3.0`; `1.3.1` corrects a stale `ask-matt` debugging route. Use `v1.3.1` as the release baseline. [v1.3.0 release](https://github.com/mattpocock/skills/releases/tag/v1.3.0), [v1.3.1 release](https://github.com/mattpocock/skills/releases/tag/v1.3.1), [changelog](https://github.com/mattpocock/skills/blob/v1.3.1/CHANGELOG.md).

## Recommended changes

Add the three newly promoted engineering skills to the installer:

| Skill | Why add it | Dependencies and conditions |
| --- | --- | --- |
| `implement-spec` | Implements a spec by running ready tickets concurrently, then merging them into one integration branch. This adds an alternative to working through tickets with `implement`. | Calls `tdd` for each ticket and `code-review` at the end. Requires a configured issue tracker, ticket blocking relationships, subagents, and separate worktrees. Both skill dependencies are already selected. |
| `pr` | Gives PR bodies a small visual explanation, concrete before/after evidence, and a rollback and impact assessment. | Reads the project's `GLOSSARY.md`. No other skill calls. |
| `retro` | Reviews a coding session and proposes improvements to agent instructions, navigation, tools, and checks. It pushes mechanical mistakes into deterministic checks. | Calls `writing-for-agents`, which is already selected. |

These are recommendations based on gaps in this repository's existing installer. Their behavior and dependencies come from the release-pinned [implement-spec](https://github.com/mattpocock/skills/blob/v1.3.1/skills/engineering/implement-spec/SKILL.md), [pr](https://github.com/mattpocock/skills/blob/v1.3.1/skills/engineering/pr/SKILL.md), and [retro](https://github.com/mattpocock/skills/blob/v1.3.1/skills/engineering/retro/SKILL.md) sources.

Keep `wait-what` out of the default selection. It overlaps with `bro`, which is the user's preferred explanation skill. [wait-what source](https://github.com/mattpocock/skills/blob/v1.3.1/skills/productivity/wait-what/SKILL.md).

Remove `resolving-merge-conflicts` from the upstream selection and README guidance. Upstream deleted it without a replacement. Update references to the domain-doc convention from `CONTEXT.md` and `CONTEXT-MAP.md` to `GLOSSARY.md` and `GLOSSARY-MAP.md`. Existing domain documents need renaming in the repositories that own them. The release also fixes invalid YAML descriptions and makes skill-to-skill calls explicit. [v1.3.1 release](https://github.com/mattpocock/skills/releases/tag/v1.3.1).

## Earlier updates checked

The installer already includes the earlier promoted `wizard` and `to-questionnaire` skills and the renamed `to-spec`, `to-tickets`, `code-review`, and `writing-for-agents`. `wait-what`, introduced in 1.2.0, remains intentionally excluded in favor of `bro`. Older installed copies of the renamed skills may remain because the installer adds and updates skills rather than deleting them. [Changelog through 1.3.1](https://github.com/mattpocock/skills/blob/v1.3.1/CHANGELOG.md).

Refreshing existing selections also picks up these workflow changes:

- Grilling asks rounds of ready questions rather than one question per turn.
- The local tracker writes each ticket to its own file under `.scratch/<feature>/issues/`.
- Logic prototypes are self-contained HTML; answered prototypes remain on `prototype/<name>` branches as evidence.
- Codex metadata distinguishes user-invoked skills from implicit model invocation. Version 1.2.3 corrects `writing-for-agents` metadata so it can trigger implicitly again.
- Version 1.3.0 fixes malformed YAML descriptions and clarifies loading model-invoked dependencies without attempting to call user-invoked setup skills.

These are changes to upstream workflows, which our installer fetches directly, rather than new local skill copies. [Release-pinned changelog](https://github.com/mattpocock/skills/blob/v1.3.1/CHANGELOG.md).

## Installation and compatibility

This repository selects upstream skills through `install.sh`; it does not vendor their full source. Keep that design. The upstream README recommends `npx skills@latest add mattpocock/skills` for Codex and warns that installing both editable skills and the Claude plugin creates duplicates. Its published reference lists 20 engineering and 7 productivity skills. With the three additions and removal above, our selection covers 26 of those 27 skills, intentionally excluding `wait-what`, plus our existing Git guardrails extra. [Release-pinned README](https://github.com/mattpocock/skills/blob/v1.3.1/README.md).

Keep the existing Git guardrails selection. Other skills in upstream `misc` and `in-progress` should stay outside the default installer until there is a concrete need. The installer forwards optional scope, agent, and confirmation arguments to every source so the selected set can be refreshed globally in a terminal.

`implement-spec` and `retro` are user-invoked. `pr` is model-invoked. Preserve the distinction in usage documentation. Upstream encodes it with Claude frontmatter and Codex `agents/openai.yaml`; user-invoked skills must be started by the user, while reusable model-invoked dependencies can be loaded by another skill. [Invocation convention](https://github.com/mattpocock/skills/blob/v1.3.1/.agents/invocation.md).

The updated router recommends `retro` after debugging. It also routes multi-ticket builds to either per-ticket `implement` or parallel `implement-spec`. Our README should explain that choice and place `retro` after a session while its context is still available. [ask-matt source](https://github.com/mattpocock/skills/blob/v1.3.1/skills/engineering/ask-matt/SKILL.md).

## Terminal verification

On 2026-10-06, ran `bash install.sh --global --agent antigravity claude-code codex cursor droid gemini-cli github-copilot opencode pi warp zed --yes`. All five source installations completed after adding `--full-depth` to discover Cursor's nested `unslop` skill. Refreshed 44 source-managed skills. The global inventory grew from 57 to 59: added `implement-spec`, `pr`, and `retro`, and removed `wait-what`. `bro` remains installed. Other previous skills remain present, and a file comparison against the pre-install backup confirmed separate local skills were unchanged. An old installed `resolving-merge-conflicts` copy remains available, although it is no longer selected for future installs.

Shell syntax and whitespace checks passed. The installation log and pre-install backup remain outside this repository in `/tmp/skills-install-20261006.log` and `/tmp/skills-backup-20261006.tar.gz`.
