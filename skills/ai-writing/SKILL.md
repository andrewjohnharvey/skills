---
name: ai-writing
description: Write or rewrite text for AI agents by chaining the agent-writing, technical-English, and unslop skills.
---

# AI Writing

Apply these skills to the user's writing task in order:

1. Run `/writing-for-agents` to make the text predictable for an agent to follow.
2. Run `/technical-english` on that result to make every instruction plain and unambiguous.
3. Run `/unslop` on that result to remove AI writing patterns while preserving the instructions.

Treat each skill as the source of truth for its pass. Finish when the final text preserves the user's meaning and the requirements established by all three passes.
