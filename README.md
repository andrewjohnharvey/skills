# Skills

My skills for AI agents. A few I wrote. The rest I borrow from people whose work I love. One command installs the lot.

## Install

Walk through each skill in the `skills` TUI:

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/andrewjohnharvey/skills/main/install.sh)
```

Just mine:

```sh
npx skills add andrewjohnharvey/skills
```

One of mine:

```sh
npx skills add andrewjohnharvey/skills --skill pg-writing
```

Then `npx skills list` to see what landed.

Installers add and update skills, but they may leave behind skills that a source later renames or removes. After a big upstream update, run `npx skills list` and remove anything you no longer want.

## Skills

### Mine

- **pg-writing** — Writes the way Paul Graham writes: plain words, short sentences, nothing wasted. Good for emails, posts, and anything that feels clunky.
- **prd-to-plan** — Turns a PRD into a local plan of tracer-bullet phases. It is a file-based alternative to Matt Pocock's tracker-based `to-tickets` flow.
- **diagnose** — A short, user-invoked alias for Matt Pocock's maintained `diagnosing-bugs` workflow.
- **dogfood** — Systematically explores a web app to find bugs and UX issues, producing a report with full repro evidence (step-by-step screenshots and videos) for every finding. Originally by [mxyhi](https://github.com/mxyhi/ok-skills/blob/main/dogfood/SKILL.md); kept here because it wasn't available on skills.sh.
- **extract-wisdom** — Extracts adaptive, content-specific insights from videos, podcasts, articles, and pasted text. Originally by [Daniel Miessler](https://github.com/danielmiessler/Personal_AI_Infrastructure/tree/main/Releases/v3.0/.claude/skills/ExtractWisdom).

### From other people

#### From [mattpocock/skills](https://github.com/mattpocock/skills) (MIT)

These skills work best as recipes.

##### Get started

Run `/setup-matt-pocock-skills` once per repo. It tells the other skills where issues and domain docs live. If you are not sure what to use next, run `/ask-matt`.

##### Ship a feature

`/grill-with-docs` → `/to-spec` → `/to-tickets` → `/implement`

`grill-with-docs` sharpens the idea through `grilling` and records its language with `domain-modeling`. `implement` builds each ticket with `tdd`, then finishes with `code-review`.

##### Plan a large project

`/wayfinder` → `/to-spec` → `/to-tickets` → `/implement`

`wayfinder` maps work that is too large or unclear for one session. It clears open questions with `research`, `prototype`, `grilling`, and `domain-modeling`. Once the path is clear, the normal feature recipe takes over.

##### Fix a hard bug

Run `/diagnosing-bugs`. It builds a tight reproduction loop, finds the cause, fixes it, and leaves a regression test. If the bug exposes a bad seam, follow it with `/improve-codebase-architecture`.

##### Improve the architecture

Run `/improve-codebase-architecture` to find the worst friction and choose what to fix. It uses `codebase-design`, `grilling`, and `domain-modeling` to shape the change.

##### Process incoming work

`/triage` → `/implement`

`triage` verifies incoming issues and pull requests. It uses `grilling` and `domain-modeling` when a request is vague, then prepares clear work for `implement`.

##### Answer an open question

Use `/research` when you need facts from primary sources. Use `/prototype` when you need to see how an interface or state model feels.

##### Resolve a merge

Run `/resolving-merge-conflicts`. It traces both sides back to their intent, resolves each conflict, and runs the repo's checks.

##### Sharpen a plan outside a codebase

Run `/grill-me`. It uses `grilling` to work through one decision at a time.

##### Move work to a fresh session

Run `/handoff` to save the useful context for another agent.

##### Learn something

Run `/teach` to build a course of short lessons around a goal.

##### Write a better skill

Run `/writing-great-skills` to make a skill smaller, clearer, and more predictable.

##### Block dangerous Git commands in Claude Code

Run `/git-guardrails-claude-code` to stop commands such as `git push`, `git reset --hard`, and `git clean -f`.

#### From [remotion-dev/skills](https://github.com/remotion-dev/skills)

- **remotion-best-practices** — Domain knowledge for building videos with Remotion and React: animations, audio, assets, transitions, composition management.

#### From [raphaelsalaja/userinterface-wiki](https://github.com/raphaelsalaja/userinterface-wiki)

- **userinterface-wiki** — 152 UI/UX best-practice rules across 12 categories, prioritised by impact, for code review and generation.

#### From [anthropics/skills](https://github.com/anthropics/skills)

- **frontend-design** — A design framework for distinctive, production-grade frontend UIs. Bold typography, colour, motion, and spacing choices that avoid generic "AI slop".
- **pptx** — Create, edit, and read PowerPoint presentations with design guidance and QA workflows.
- **docx** — Create, edit, and read Word documents with full formatting: tables, images, hyperlinks, tracked changes.
- **xlsx** — Create, edit, and analyse Excel spreadsheets (and .xlsm/.csv/.tsv) with formulas, formatting, and error-free calculations.
