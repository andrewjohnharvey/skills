---
name: human-writing
description: Write or rewrite text for people by chaining the technical-English, PG-writing, and unslop skills.
---

# Human Writing

Apply these skills to the user's writing task in order:

1. Run `/technical-english` to make the text plain and unambiguous.
2. Run `/pg-writing` on that result to make it clear, simple, and concise.
3. Run `/unslop` on that result to remove AI writing patterns and give it a human voice.

Treat each skill as the source of truth for its pass. Finish when the final text preserves the user's meaning and the requirements established by all three passes.

Before returning the text, remove artificial line breaks within paragraphs and let the viewing program wrap lines automatically, preserving only line breaks that carry structural meaning.
