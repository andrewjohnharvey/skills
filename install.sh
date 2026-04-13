#!/usr/bin/env bash
# Install every skill I use on a fresh machine, in two TUI passes.
# Each `npx skills add` shows one picker for agents and confirmation.
set -euo pipefail

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

# My own skills
npx skills@latest add andrewjohnharvey/skills

echo
echo "Done. Run \`npx skills list\` to see what's installed."
