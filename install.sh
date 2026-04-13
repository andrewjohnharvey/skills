#!/usr/bin/env bash
# Install every skill I use on a fresh machine.
# Runs `npx skills add` for each skill in sequence, interactively,
# so you can pick agents and options in the TUI each time.
set -euo pipefail

# My own skills — pick which ones in the TUI
npx skills@latest add andrewjohnharvey/skills

# Matt Pocock — https://github.com/mattpocock/skills
npx skills@latest add mattpocock/skills/write-a-prd
npx skills@latest add mattpocock/skills/prd-to-plan
npx skills@latest add mattpocock/skills/prd-to-issues
npx skills@latest add mattpocock/skills/grill-me
npx skills@latest add mattpocock/skills/design-an-interface
npx skills@latest add mattpocock/skills/request-refactor-plan
npx skills@latest add mattpocock/skills/tdd
npx skills@latest add mattpocock/skills/triage-issue
npx skills@latest add mattpocock/skills/improve-codebase-architecture
npx skills@latest add mattpocock/skills/ubiquitous-language

echo
echo "Done. Run \`npx skills list\` to see what's installed."
