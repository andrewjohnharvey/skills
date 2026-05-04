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
npx skills add andrewjohnharvey/skills --skill paul-graham-writing
```

Then `npx skills list` to see what landed.

## Skills

### Mine

- **paul-graham-writing** — Writes the way Paul Graham writes: plain words, short sentences, nothing wasted. Good for emails, posts, and anything that feels clunky.
- **prd-to-plan** — Turns a PRD into a multi-phase plan using tracer-bullet vertical slices. Originally by [Matt Pocock](https://github.com/mattpocock/skills); kept here after he removed it upstream.

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
