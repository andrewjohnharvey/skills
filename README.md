# Skills

This is my collection of agent workflows. One script installs the full set.

## Install

In Fish, run:

```fish
bash (curl -fsSL https://raw.githubusercontent.com/andrewjohnharvey/skills/main/install.sh | psub)
```

In Bash, run:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/andrewjohnharvey/skills/main/install.sh)
```

These commands keep the installer connected to your terminal, so its prompts work.

To install only the skills from this repository, run:

```sh
npx skills add andrewjohnharvey/skills
```

To install one skill from this repository, run:

```sh
npx skills add andrewjohnharvey/skills --skill pg-writing
```

Run `npx skills list` to see the installed skills.

The installer adds and updates skills. It does not always remove skills that an upstream source renamed or deleted. After a large update, review the installed list and remove any old skills.

## Pick a task

### Start work in a repository

Run `/setup-matt-pocock-skills` once. It tells the other skills where to find issues and domain documents. If you do not know which skill to use next, run `/ask-matt`.

### Write for people or agents

Run `/human-writing` to write or revise text for people. It applies `technical-english`, `pg-writing`, and `unslop` in that order.

Run `/ai-writing` to write or revise instructions and documents for agents. It applies `writing-for-agents`, `technical-english`, and `unslop` in that order.

Use one of the individual writing skills when you need a narrower pass:

- `/pg-writing` makes prose simple and concise.
- `/technical-english` makes text plain and unambiguous. It draws on ASD-STE100.
- `/unslop` removes common AI writing patterns.
- `/writing-for-agents` makes skills, `CLAUDE.md` files, and other agent instructions easier to follow.

### Ship a feature

`/grill-with-docs` → `/to-spec` → `/to-tickets` → `/implement`

`grill-with-docs` tests the idea through `grilling`. It records the project's terms and decisions with `domain-modeling`. `implement` builds each ticket with `tdd` and finishes with `code-review`.

If you already have a PRD, run `/prd-to-plan`. It writes a phased plan to `./plans/`.

### Plan a large project

`/wayfinder` → `/to-spec` → `/to-tickets` → `/implement`

`wayfinder` maps work that is too large or unclear for one session. It uses `research`, `prototype`, `grilling`, and `domain-modeling` to answer open questions. The normal feature workflow takes over when the path is clear.

### Fix a hard bug

Run `/diagnose`. It is a short alias for `/diagnosing-bugs`. The skill reproduces the bug, finds its cause, fixes it, and adds a regression test.

If the bug reveals a poor code boundary, follow it with `/improve-codebase-architecture`.

### Improve the architecture

Run `/improve-codebase-architecture` to find the code that causes the most friction. It uses `codebase-design`, `grilling`, and `domain-modeling` to plan the change.

### Build TypeScript services

- `/coding-standards` applies TypeScript rules for typed failures, parsed inputs, explicit dependencies, and safe tests.
- `/effect-service-design` designs or reviews Effect services, Layers, and composition.
- `/prelude` creates or rebuilds a TypeScript `prelude.ts` from the generic helpers and types in the repository.

### Work in Herdr

Run `/herdr` to control Herdr workspaces, tabs, panes, commands, and background processes. The skill requires a Herdr-managed pane.

### Process incoming work

`/triage` → `/implement`

`triage` checks incoming issues and pull requests. It turns vague requests into clear work for `implement`.

### Answer an open question

Run `/research` when you need facts from primary sources. Run `/prototype` when you need to test an interface or state model.

### Design a web interface

Run `/frontend-design` to give a new interface a clear visual direction.

### Create a document, deck, or spreadsheet

- `/docx` creates and edits Word documents.
- `/pptx` creates and edits slide decks.
- `/xlsx` creates and edits spreadsheets.

### Extract ideas from a source

Run `/extract-wisdom` for a video, podcast, or article. It finds the useful ideas and chooses sections that fit the source.

### Resolve a merge

Run `/resolving-merge-conflicts`. It traces the intent of both sides, resolves each conflict, and runs the repository checks.

### Guide a person through setup

Run `/wizard` to create a Bash script for steps that only a person can complete. Examples include provisioning infrastructure and setting CI secrets.

### Test a plan

Run `/grill-me` to test one decision at a time.

### Ask someone for missing answers

Run `/to-questionnaire` when another person must make a decision. It turns the open questions into a questionnaire.

### Ask for a simpler explanation

Run `/bro` to restate the previous response in plain language.

### Continue in a new session

Run `/handoff` to save the useful context for another agent.

### Learn a subject

Run `/teach` to build a course of short lessons around a goal.

### Block dangerous Git commands in Claude Code

Run `/git-guardrails-claude-code` to block commands such as `git push`, `git reset --hard`, and `git clean -f`.

## Sources

- [Matt Pocock's skills](https://github.com/mattpocock/skills) provide the engineering and planning workflows under the MIT license. `prd-to-plan` keeps an earlier file-based planning workflow.
- [David Mulroy's skills](https://github.com/dmmulroy/skills) provide `bro`, `coding-standards`, `effect-service-design`, `herdr`, and `prelude`.
- [Cursor's pstack plugin](https://github.com/cursor/plugins/tree/main/pstack) provides `unslop`.
- [Daniel Miessler's LifeOS](https://github.com/danielmiessler/LifeOS/tree/main/LifeOS/install/skills/ExtractWisdom) is the source for `extract-wisdom`.
- [Anthropic's skills](https://github.com/anthropics/skills) provide `frontend-design`, `pptx`, `docx`, and `xlsx`.
