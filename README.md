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

- **to-prd** — Turns the current conversation into a PRD and files it as a GitHub issue. No interview — it uses what you've already said.
- **to-issues** — Splits a plan, spec, or PRD into GitHub issues anyone on the team can grab.
- **grill-me** — Interviews you about a plan until every branch is resolved. Use it to stress-test your thinking.
- **design-an-interface** — Generates several very different interface designs in parallel so you can compare.
- **request-refactor-plan** — Plans a refactor as a series of tiny commits, then files it as a GitHub issue.
- **tdd** — Red-green-refactor, done properly.
- **triage-issue** — Finds a bug's root cause and files an issue with a TDD-based fix plan.
- **improve-codebase-architecture** — Suggests architectural changes that make code more testable.
- **ubiquitous-language** — Pulls a DDD glossary out of the current conversation so your team shares vocabulary.
- **github-triage** — Triages GitHub issues through a label-based state machine, grilling to prep them for an AFK agent.
- **caveman** — Ultra-terse replies. Drops filler and articles for ~75% fewer tokens, same technical accuracy.
- **zoom-out** — Steps up a layer and maps the relevant modules and callers when you're new to an area.
