#!/usr/bin/env bash
# With no arguments, each source prompts for agents and confirmation.
# Arguments such as --global --agent codex claude-code --yes reach every source.
set -euo pipefail

# My own skills
npx skills@latest add andrewjohnharvey/skills "$@"

# Matt Pocock's promoted skills except wait-what (we use bro), plus git guardrails
# https://github.com/mattpocock/skills
npx skills@latest add mattpocock/skills -s \
  ask-matt \
  diagnosing-bugs \
  grill-with-docs \
  triage \
  improve-codebase-architecture \
  setup-matt-pocock-skills \
  tdd \
  to-spec \
  to-tickets \
  wayfinder \
  implement \
  implement-spec \
  prototype \
  research \
  domain-modeling \
  codebase-design \
  code-review \
  pr \
  retro \
  wizard \
  grill-me \
  grilling \
  handoff \
  teach \
  to-questionnaire \
  writing-for-agents \
  git-guardrails-claude-code "$@"

# David Mulroy's TypeScript and agent workflow skills
# https://github.com/dmmulroy/skills
npx skills@latest add dmmulroy/skills -s \
  bro \
  coding-standards \
  effect-service-design \
  herdr \
  prelude "$@"

# Cursor's pstack writing skill
# https://github.com/cursor/plugins/tree/main/pstack/skills/unslop
npx skills@latest add cursor/plugins --full-depth -s unslop "$@"

# Anthropic's skills — https://github.com/anthropics/skills
npx skills@latest add anthropics/skills -s \
  frontend-design \
  pptx \
  docx \
  xlsx "$@"

echo
echo "Done. Run \`npx skills list\` to see what's installed."
