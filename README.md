# Skills

Agent workflows for the work I do most. One command installs the lot.

## Install

Install everything:

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/andrewjohnharvey/skills/main/install.sh)
```

Install only my skills:

```sh
npx skills add andrewjohnharvey/skills
```

Install one of mine:

```sh
npx skills add andrewjohnharvey/skills --skill pg-writing
```

Run `npx skills list` to see what landed.

Installers add and update skills, but they may leave old ones behind after a source renames or removes them. After a big upstream update, review the list and remove anything you no longer want.

## What do you want to do?

### Get started in a repo

Run `/setup-matt-pocock-skills` once. It tells the other skills where issues and domain docs live. If you are not sure what to use next, run `/ask-matt`.

### Write something clearly

Run `/pg-writing` to draft or rewrite prose with plain words and no wasted space.

Run `/technical-english` when the reader is translating as they go and every word has to carry one meaning. References the ASD-STE100 standard.

Run `/unslop` to remove obvious AI writing patterns and give the text a more human voice.

Run `/ai-writing` to prepare instructions and other documents for agents. It applies `writing-for-agents`, `technical-english`, then `unslop`.

Run `/human-writing` to prepare prose for people. It applies `technical-english`, `pg-writing`, then `unslop`.

### Ship a feature

`/grill-with-docs` → `/to-spec` → `/to-tickets` → `/implement`

`grill-with-docs` sharpens the idea through `grilling` and records its language with `domain-modeling`. `implement` builds each ticket with `tdd`, then finishes with `code-review`.

Have a PRD and want a local plan instead? Run `/prd-to-plan` to create tracer-bullet phases in `./plans/`.

### Plan a large project

`/wayfinder` → `/to-spec` → `/to-tickets` → `/implement`

`wayfinder` maps work that is too large or unclear for one session. It clears open questions with `research`, `prototype`, `grilling`, and `domain-modeling`. Once the path is clear, the normal feature recipe takes over.

### Fix a hard bug

Run `/diagnose`, a short alias for `/diagnosing-bugs`. It builds a tight reproduction loop, finds the cause, fixes it, and leaves a regression test.

If the bug exposes a bad seam, follow it with `/improve-codebase-architecture`.

### Improve the architecture

Run `/improve-codebase-architecture` to find the worst friction and choose what to fix. It uses `codebase-design`, `grilling`, and `domain-modeling` to shape the change.

### Build TypeScript services

Use `/coding-standards` for correct-by-construction TypeScript with typed failures, parsed boundaries, explicit dependencies, and safe tests.

Use `/effect-service-design` to design or audit Effect services, Layers, and composition.

Use `/prelude` to create or rebuild a TypeScript `prelude.ts` from the generic helpers and types already present in a codebase.

### Work in Herdr

Use `/herdr` to inspect and control Herdr workspaces, tabs, panes, commands, and background processes. It requires a Herdr-managed pane.

### Process incoming work

`/triage` → `/implement`

`triage` verifies incoming issues and pull requests. It sharpens vague requests, then prepares clear work for `implement`.

### Answer an open question

Use `/research` when you need facts from primary sources. Use `/prototype` when you need to see how an interface or state model feels.

### Design a web interface

Use `/frontend-design` to make a new interface feel deliberate rather than generic.

### Create a document, deck, or spreadsheet

- `/docx` creates and edits Word documents.
- `/pptx` creates and edits slide decks.
- `/xlsx` creates and edits spreadsheets.

### Extract ideas from a video, podcast, or article

Run `/extract-wisdom`. It finds the ideas that matter in the source instead of forcing every source into the same template.

### Resolve a merge

Run `/resolving-merge-conflicts`. It traces both sides back to their intent, resolves each conflict, and runs the repo's checks.

### Set up something only a person can do

Run `/wizard` to build a bash script that walks someone through the steps an agent cannot take, such as provisioning infrastructure or setting CI secrets.

### Sharpen a plan outside a codebase

Run `/grill-me`. It uses `grilling` to work through one decision at a time.

### Get an answer from someone else

Run `/to-questionnaire` to turn a decision you cannot settle alone into a questionnaire for the person who can.

### Ask for a plainer explanation

Run `/bro` to restate the previous response in plain, concise language without jargon.

### Move work to a fresh session

Run `/handoff` to save the useful context for another agent.

### Learn something

Run `/teach` to build a course of short lessons around a goal.

### Write for agents

Run `/writing-for-agents` to sharpen anything an agent reads: a skill, a `CLAUDE.md`, or any doc reached by a pointer.

### Block dangerous Git commands in Claude Code

Run `/git-guardrails-claude-code` to stop commands such as `git push`, `git reset --hard`, and `git clean -f`.

## Sources

- [Matt Pocock's skills](https://github.com/mattpocock/skills) (MIT) provide the engineering and planning workflows. `prd-to-plan` preserves an earlier file-based planning workflow.
- [David Mulroy's skills](https://github.com/dmmulroy/skills) provide `bro`, `coding-standards`, `effect-service-design`, `herdr`, and `prelude`.
- [Cursor's pstack plugin](https://github.com/cursor/plugins/tree/main/pstack) provides `unslop`.
- [Daniel Miessler's LifeOS](https://github.com/danielmiessler/LifeOS/tree/main/LifeOS/install/skills/ExtractWisdom) is the basis of `extract-wisdom`.
- [Anthropic's skills](https://github.com/anthropics/skills) provide `frontend-design`, `pptx`, `docx`, and `xlsx`.
