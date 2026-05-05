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

## Skills

### Mine

- **pg-writing** — Writes the way Paul Graham writes: plain words, short sentences, nothing wasted. Good for emails, posts, and anything that feels clunky.
- **prd-to-plan** — Turns a PRD into a multi-phase plan using tracer-bullet vertical slices. Originally by [Matt Pocock](https://github.com/mattpocock/skills); kept here after he removed it upstream.
- **dogfood** — Systematically explores a web app to find bugs and UX issues, producing a report with full repro evidence (step-by-step screenshots and videos) for every finding. Originally by [mxyhi](https://github.com/mxyhi/ok-skills/blob/main/dogfood/SKILL.md); kept here because it wasn't available on skills.sh.

### From other people

#### From [mattpocock/skills](https://github.com/mattpocock/skills) (MIT)

Run `/setup-matt-pocock-skills` once per repo before using the engineering skills — it tells them which issue tracker, triage labels, and domain doc layout you use.

- **setup-matt-pocock-skills** — Scaffolds an `## Agent skills` block in AGENTS.md/CLAUDE.md plus `docs/agents/` so the engineering skills know your issue tracker, labels, and doc layout. Run this first.
- **to-prd** — Turns the current conversation into a PRD and files it on your issue tracker. No interview — it uses what you've already said.
- **to-issues** — Splits a plan, spec, or PRD into independently-grabbable issues.
- **grill-me** — Interviews you about a plan until every branch is resolved. Use it to stress-test your thinking.
- **grill-with-docs** — Like grill-me, but also sharpens terminology and updates CONTEXT.md and ADRs inline as decisions land. Matt's most popular skill.
- **diagnose** — Disciplined diagnosis loop for hard bugs and performance regressions: reproduce → minimise → hypothesise → instrument → fix → regression-test.
- **tdd** — Red-green-refactor, done properly.
- **triage** — Moves issues through a label-based state machine, grilling to prep them for an AFK agent.
- **improve-codebase-architecture** — Suggests architectural changes that make code more testable.
- **caveman** — Ultra-terse replies. Drops filler and articles for ~75% fewer tokens, same technical accuracy.
- **zoom-out** — Steps up a layer and maps the relevant modules and callers when you're new to an area.

#### From [remotion-dev/skills](https://github.com/remotion-dev/skills)

- **remotion-best-practices** — Domain knowledge for building videos with Remotion and React: animations, audio, assets, transitions, composition management.

#### From [raphaelsalaja/userinterface-wiki](https://github.com/raphaelsalaja/userinterface-wiki)

- **userinterface-wiki** — 152 UI/UX best-practice rules across 12 categories, prioritised by impact, for code review and generation.

#### From [anthropics/skills](https://github.com/anthropics/skills)

- **frontend-design** — A design framework for distinctive, production-grade frontend UIs. Bold typography, colour, motion, and spacing choices that avoid generic "AI slop".
- **pptx** — Create, edit, and read PowerPoint presentations with design guidance and QA workflows.
- **docx** — Create, edit, and read Word documents with full formatting: tables, images, hyperlinks, tracked changes.
- **xlsx** — Create, edit, and analyse Excel spreadsheets (and .xlsm/.csv/.tsv) with formulas, formatting, and error-free calculations.
