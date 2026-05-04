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
  caveman \
  zoom-out \
  write-a-skill

echo
echo "Done. Run \`npx skills list\` to see what's installed."
