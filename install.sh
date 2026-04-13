#!/usr/bin/env bash
# Each `npx skills add` shows one picker for agents and confirmation.
set -euo pipefail

# My own skills
npx skills@latest add andrewjohnharvey/skills

# Matt Pocock's skills — https://github.com/mattpocock/skills
npx skills@latest add mattpocock/skills -s \
  write-a-prd \
  prd-to-plan \
  prd-to-issues \
  grill-me \
  design-an-interface \
  request-refactor-plan \
  tdd \
  triage-issue \
  improve-codebase-architecture \
  ubiquitous-language

echo
echo "Done. Run \`npx skills list\` to see what's installed."
