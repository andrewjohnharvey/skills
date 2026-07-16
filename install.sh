#!/usr/bin/env bash
# Each `npx skills add` shows one picker for agents and confirmation.
set -euo pipefail

# My own skills
npx skills@latest add andrewjohnharvey/skills

# Matt Pocock's promoted skills, plus his Claude Code git guardrails
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
  prototype \
  research \
  domain-modeling \
  codebase-design \
  code-review \
  resolving-merge-conflicts \
  grill-me \
  grilling \
  handoff \
  teach \
  writing-great-skills \
  git-guardrails-claude-code

# Anthropic's skills — https://github.com/anthropics/skills
npx skills@latest add anthropics/skills -s \
  frontend-design \
  pptx \
  docx \
  xlsx

echo
echo "Done. Run \`npx skills list\` to see what's installed."
