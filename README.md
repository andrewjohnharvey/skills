# Skills

This is my personal collection of skills for AI agents — a few I've written myself, plus a hand-picked set I borrow from other people whose work I love. One command sets up the whole lot on any machine, so your agent session is ready to go in seconds.

## Install

Grab everything in one go — my skills and the external ones:

```sh
curl -fsSL https://raw.githubusercontent.com/andrewjohnharvey/skills/main/install.sh | bash
```

Just want my skills? No problem:

```sh
npx skills add andrewjohnharvey/skills --all
```

Or pick a single one:

```sh
npx skills add andrewjohnharvey/skills --skill paul-graham-writing
```

Once it's done, run `npx skills list` to see what landed.

## My skills

- **paul-graham-writing** — Helps your agent write the way Paul Graham writes: ordinary words, short sentences, nothing wasted. Great for emails, posts, essays, or tidying up anything that feels clunky.

## From [Matt Pocock](https://github.com/mattpocock/skills)

Matt has built a brilliant set of skills for planning and shipping software. These are the ones I reach for most:

- **write-a-prd** — Walks you through writing a PRD by interviewing you and poking around the codebase, then files it as a GitHub issue.
- **prd-to-plan** — Turns a PRD into a multi-phase plan using tracer-bullet vertical slices.
- **prd-to-issues** — Breaks a PRD into GitHub issues anyone on the team can pick up.
- **grill-me** — Interviews you relentlessly about a plan until every branch of the decision tree is resolved. Great when you need your thinking stress-tested.
- **design-an-interface** — Generates several radically different interface designs in parallel so you can compare.
- **request-refactor-plan** — Helps you plan a refactor as a series of tiny commits, then files it as a GitHub issue.
- **tdd** — Red-green-refactor, done properly.
- **triage-issue** — Hunts down a bug's root cause and files an issue with a TDD-based fix plan.
- **improve-codebase-architecture** — Looks for architectural changes that would make a codebase more testable.
- **ubiquitous-language** — Pulls a DDD-style glossary out of the current conversation so your team can share vocabulary.
