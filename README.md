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
- **diagnose** — A short, user-invoked alias for Matt Pocock's maintained `diagnosing-bugs` workflow.
- **dogfood** — Systematically explores a web app to find bugs and UX issues, producing a report with full repro evidence (step-by-step screenshots and videos) for every finding. Originally by [mxyhi](https://github.com/mxyhi/ok-skills/blob/main/dogfood/SKILL.md); kept here because it wasn't available on skills.sh.
- **extract-wisdom** — Extracts adaptive, content-specific insights from videos, podcasts, articles, and pasted text. Originally by [Daniel Miessler](https://github.com/danielmiessler/Personal_AI_Infrastructure/tree/main/Releases/v3.0/.claude/skills/ExtractWisdom).

### From other people

#### From [mattpocock/skills](https://github.com/mattpocock/skills) (MIT)

Run `/setup-matt-pocock-skills` once per repo before using the engineering skills — it tells them which issue tracker, triage labels, and domain doc layout you use.

Some skills are **user-invoked** workflows that you start explicitly. Others are **model-invoked** disciplines that agents can apply automatically or that the workflow skills call as dependencies.

- **setup-matt-pocock-skills** — Scaffolds an `## Agent skills` block in AGENTS.md/CLAUDE.md plus `docs/agents/` so the engineering skills know your issue tracker, labels, and doc layout. Run this first.
- **to-prd** — Turns the current conversation into a PRD and files it on your issue tracker. No interview — it uses what you've already said.
- **to-issues** — Splits a plan, spec, or PRD into independently-grabbable issues.
- **grill-me** — Interviews you about a plan until every branch is resolved. Use it to stress-test your thinking.
- **grilling** — Reusable interview loop behind grill-me, grill-with-docs, and other workflows that need to resolve a design one decision at a time.
- **grill-with-docs** — Like grill-me, but also builds the domain model and updates CONTEXT.md and ADRs inline as decisions land.
- **diagnosing-bugs** — Disciplined diagnosis loop for hard bugs and performance regressions: reproduce → minimise → hypothesise → instrument → fix → regression-test.
- **tdd** — Red-green-refactor in thin vertical slices, with explicit interface-design and test-quality guidance.
- **triage** — Moves issues and external pull requests through a label-based state machine, producing agent-ready briefs.
- **resolving-merge-conflicts** — Disciplined loop for resolving an in-progress git merge/rebase conflict: inspect state, understand both sides, resolve, verify.
- **git-guardrails-claude-code** — Sets up Claude Code hooks that block destructive git commands (push, `reset --hard`, `clean`, `branch -D`) before they run.
- **codebase-design** — Shared vocabulary and design rules for deep modules, small interfaces, clean seams, and testability.
- **domain-modeling** — Builds and sharpens project terminology, CONTEXT.md glossaries, and architectural decisions.
- **improve-codebase-architecture** — Scans for architectural improvements, presents them in a visual HTML report, and grills through the selected design.
- **prototype** — Builds throwaway prototypes to answer design questions: terminal apps for logic/state, or multiple UI variations for look-and-feel.
- **implement** — Drives a full work item from a PRD or set of issues: applies `tdd` at pre-agreed seams, runs typechecking and tests at the right cadence, then hands off to `review` and commits. The connective tissue between `to-prd`/`to-issues` and the actual build.
- **review** — Two-axis review of the diff since a fixed point (commit/branch/tag): **Standards** (does it follow the repo's documented conventions + a Fowler code-smell baseline?) and **Spec** (does it match the originating issue/PRD?). Runs both as parallel sub-agents and reports them side by side. _Currently in Matt's `in-progress` folder — may change upstream._
- **handoff** — Summarises the current conversation into a compact handoff document so another agent can continue cleanly.
- **teach** — Teaches a concept across multiple sessions using a stateful workspace, reusable lesson assets, references, and learning records.
- **writing-great-skills** — A reference for writing predictable skills, including invocation design, descriptions, structure, and removing no-op instructions.

#### From [remotion-dev/skills](https://github.com/remotion-dev/skills)

- **remotion-best-practices** — Domain knowledge for building videos with Remotion and React: animations, audio, assets, transitions, composition management.

#### From [raphaelsalaja/userinterface-wiki](https://github.com/raphaelsalaja/userinterface-wiki)

- **userinterface-wiki** — 152 UI/UX best-practice rules across 12 categories, prioritised by impact, for code review and generation.

#### From [anthropics/skills](https://github.com/anthropics/skills)

- **frontend-design** — A design framework for distinctive, production-grade frontend UIs. Bold typography, colour, motion, and spacing choices that avoid generic "AI slop".
- **pptx** — Create, edit, and read PowerPoint presentations with design guidance and QA workflows.
- **docx** — Create, edit, and read Word documents with full formatting: tables, images, hyperlinks, tracked changes.
- **xlsx** — Create, edit, and analyse Excel spreadsheets (and .xlsm/.csv/.tsv) with formulas, formatting, and error-free calculations.
