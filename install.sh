#!/usr/bin/env bash
# Each `npx skills add` shows one picker for agents and confirmation.
set -euo pipefail

# My own skills
npx skills@latest add andrewjohnharvey/skills

# Matt Pocock's skills — https://github.com/mattpocock/skills
npx skills@latest add mattpocock/skills -s \
  to-prd \
  prd-to-plan \
  to-issues \
  grill-me \
  design-an-interface \
  request-refactor-plan \
  tdd \
  triage-issue \
  improve-codebase-architecture \
  ubiquitous-language \
  github-triage \
  caveman \
  zoom-out

echo
echo "Done. Run \`npx skills list\` to see what's installed."
