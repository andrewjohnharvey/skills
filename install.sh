#!/usr/bin/env bash
# Each `npx skills add` shows one picker for agents and confirmation.
set -euo pipefail

# My own skills
npx skills@latest add andrewjohnharvey/skills

# Matt Pocock's skills — https://github.com/mattpocock/skills
npx skills@latest add mattpocock/skills -s \
  setup-matt-pocock-skills \
  to-prd \
  to-issues \
  grill-me \
  grill-with-docs \
  diagnose \
  tdd \
  triage \
  improve-codebase-architecture \
  prototype \
  caveman \
  handoff \
  zoom-out \
  write-a-skill

# Remotion's skills — https://github.com/remotion-dev/skills
npx skills@latest add remotion-dev/skills -s remotion-best-practices

# Raphael Salaja's skills — https://github.com/raphaelsalaja/userinterface-wiki
npx skills@latest add raphaelsalaja/userinterface-wiki -s userinterface-wiki

# Anthropic's skills — https://github.com/anthropics/skills
npx skills@latest add anthropics/skills -s \
  frontend-design \
  pptx \
  docx \
  xlsx

echo
echo "Done. Run \`npx skills list\` to see what's installed."
