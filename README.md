# Skills

A collection of custom skills for AI agents. Install them with [`npx skills`](https://skills.sh).

## Available skills

| Skill | Description |
|-------|-------------|
| **paul-graham-writing** | Apply Paul Graham's writing principles to produce or revise content that is clear, simple, and deeply readable. Triggers on any writing, rewriting, or editing task. |

## Install

Install a specific skill:

```sh
npx skills add andrewjohnharvey/skills --skill paul-graham-writing
```

Install all skills from this repo:

```sh
npx skills add andrewjohnharvey/skills --all
```

Verify it worked:

```sh
npx skills list
```

The skill will appear automatically in your next agent session.

## Adding a new skill

1. Create a folder under `skills/` with your skill name:

```
skills/
└── skills/
    ├── paul-graham-writing/
    │   └── SKILL.md
    └── your-new-skill/
        └── SKILL.md
```

2. Write a `SKILL.md` with YAML frontmatter and markdown body:

```markdown
---
name: your-new-skill
description: >
  One or two sentences describing what the skill does and when it should trigger.
---

# Your New Skill

Your skill instructions go here.
```

3. Commit and push:

```sh
git add skills/your-new-skill/
git commit -m "Add your-new-skill"
git push
```

The skill is installable immediately after pushing.

## License

MIT
