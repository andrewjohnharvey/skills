# GPT-5.6 Luna and Terra routing recommendations

Research date: 2026-07-15

## Recommendation

Use **GPT-5.6 Terra at `high` effort as the everyday coding-agent default**. Use **GPT-5.6 Luna at `high` effort for narrow, explicit, low-risk, high-volume subagents**. Escalate to **GPT-5.6 Sol at `high` effort** when the work is ambiguous, cross-cutting, hard to verify, security-sensitive, destructive, taste-sensitive, or has already failed validation once on a smaller tier.

This differs slightly from Ben Davis's current conservative policy, which defaults all Codex coding work to Sol. His July 2026 subagent configuration nevertheless recommends `high` effort for Sol, Terra, and Luna, which supports `high` as the safest common coding default. [Ben Davis's current subagent configuration](https://github.com/davis7dotsh/my-pi-setup/blob/e122b829f201980f4bb0481c22e2e779693ed11c/skills/subagents/SKILL.md#L43-L55)

## Why Terra should be the default

OpenAI positions Terra as the balance of intelligence and cost and Luna as the cost-sensitive, high-volume tier; GitHub independently classifies Terra for balanced everyday interactive and agentic coding, while Luna is for smaller, fast, repetitive coding tasks. [OpenAI model catalog](https://developers.openai.com/api/docs/models) · [GitHub Copilot model comparison](https://docs.github.com/en/copilot/reference/ai-models/model-comparison)

Terra is unusually close to Sol on current coding evaluations. OpenAI reports Artificial Analysis Coding Agent Index scores of 80.0 for Sol, 77.4 for Terra, and 74.6 for Luna; Terminal-Bench 2.1 scores are 88.8%, 87.4%, and 84.7%; DeepSWE scores are 72.7%, 69.6%, and 67.2%. Terra also slightly exceeds GPT-5.5 on the coding-agent index and Terminal-Bench. These results make Terra the strongest value default rather than merely a mechanical-work model. [OpenAI GPT-5.6 launch evaluations](https://openai.com/index/gpt-5-6/)

The economic difference is material. In the API, Terra costs $2.50 input / $15 output per million tokens and Luna costs $1 / $6, versus Sol at $5 / $30. Codex's current token-based rate card preserves those ratios: Terra consumes 50% of Sol's credits per token and Luna consumes 20%. [Terra model page](https://developers.openai.com/api/docs/models/gpt-5.6-terra) · [Luna model page](https://developers.openai.com/api/docs/models/gpt-5.6-luna) · [Codex rate card](https://help.openai.com/en/articles/20001106-codex-rate-card)

## Where Luna fits

Good Luna tasks are bounded and easy to check:

- repository search and fact collection with a small, self-contained scope;
- boilerplate, repetitive edits, renames, formatting, and simple migrations with exact rules;
- generating tests from an explicit contract, fixtures, or an existing pattern;
- summarizing a small set of files, logs, issues, or tool results;
- parallel map-style subagents whose outputs will be synthesized and checked by Terra or Sol;
- quick syntax help, small functions, and lightweight prototypes.

Do not use Luna as the sole architect, final reviewer, or unsupervised mutating agent for consequential work. Despite the same advertised 1.05M-token context window, Luna is much weaker on OpenAI's long-context retrieval evaluation: 41.3% at both 256K–512K and 512K–1M, versus Terra at 89.6% and 72.5%. OpenAI's system card also says larger models outperform Terra and Luna on complex tasks while avoiding edit conflicts, and reports a general GPT-5.6 tendency to go beyond the user's intent more often than GPT-5.5, although absolute rates remain low. [OpenAI GPT-5.6 launch evaluations](https://openai.com/index/gpt-5-6/) · [GPT-5.6 system card](https://deploymentsafety.openai.com/gpt-5-6)

## Effort policy

- **Default coding:** `high` for Terra and Luna. This matches Ben Davis's published configuration and avoids handicapping the smaller tier on agentic work. [Ben Davis's configuration](https://github.com/davis7dotsh/my-pi-setup/blob/e122b829f201980f4bb0481c22e2e779693ed11c/skills/subagents/SKILL.md#L49-L55)
- **Mechanical, latency-first work:** `medium` is reasonable when the transformation is deterministic and validation is cheap. This is a recommendation, not a published OpenAI default.
- **`xhigh` or `max`:** prefer moving Luna to Terra, or Terra to Sol, before spending maximum reasoning on the smaller tier. Reserve `max` mainly for genuinely hard Sol work; OpenAI describes it as extra time to explore alternatives, run checks, and revise. [OpenAI GPT-5.6 launch](https://openai.com/index/gpt-5-6/)
- All three GPT-5.6 tiers officially support `none`, `low`, `medium`, `high`, `xhigh`, and `max`. [OpenAI model catalog](https://developers.openai.com/api/docs/models)

## Escalation triggers

Escalate **Luna → Terra** when any of these apply:

- the prompt cannot be made self-contained and narrow;
- the task spans many files or relies on long-context recall;
- requirements contain trade-offs rather than exact rules;
- the first test, lint, typecheck, or factual validation fails;
- edit conflicts or preservation of user changes matter.

Escalate **Terra → Sol** when any of these apply:

- architecture, API design, or ambiguous product intent;
- hard debugging, performance work, or multi-system reasoning;
- security, authorization, data migrations, destructive commands, or production operations;
- final acceptance review for consequential changes;
- polished user-facing UI, copy, or other taste-sensitive work;
- Terra's first serious attempt fails validation or appears directionally confused.

These escalation rules are an inference from OpenAI's tier positioning, eval gaps, and safety findings, not an official OpenAI routing policy. OpenAI itself recommends starting with Sol when unsure, Terra for intelligence/cost balance, and Luna for cost-sensitive high-volume work. [OpenAI model catalog](https://developers.openai.com/api/docs/models)

## Suggested AGENTS.md / CLAUDE.md text

```md
### GPT-5.6 model routing

- Default coding and general-purpose subagents: `gpt-5.6-terra`, effort `high`.
- Use `gpt-5.6-luna`, effort `high`, only for narrow, explicit, low-risk,
  easily verified work: repository search, summaries, boilerplate, repetitive
  edits, tests from a fixed contract, and parallel map-style subtasks.
- Use `gpt-5.6-sol`, effort `high`, for architecture, ambiguous or cross-cutting
  changes, hard debugging, security-sensitive or destructive work, polished
  user-facing output, final consequential review, or after a smaller model's
  first validated attempt fails.
- `medium` is acceptable for deterministic mechanical work. Prefer escalating
  the model tier before using `xhigh` or `max`; reserve `max` mainly for hard Sol work.
- Luna must not be the sole final reviewer or an unsupervised destructive agent.
  Keep its context bounded and validate its output with tests or a stronger model.
```

## Optional scores for the original table

If the table's 1–10 scores are retained, a defensible **subjective** starting point is:

| Model | Cost | Intelligence | Taste |
| --- | ---: | ---: | ---: |
| `gpt-5.6-sol` | 9 | 9 | 7 |
| `gpt-5.6-terra` | 10 | 8 | 6 |
| `gpt-5.6-luna` | 10 | 7 | 5 |

The intelligence scores roughly reflect the published coding and professional eval ordering. The cost scores assume Codex credits or marginal usage matter: Terra costs half as many credits per token as Sol and Luna one-fifth. The taste scores are deliberately conservative because OpenAI claims a GPT-5.6 design improvement but does not publish tier-specific taste or frontend results. [OpenAI GPT-5.6 launch](https://openai.com/index/gpt-5-6/) · [Codex rate card](https://help.openai.com/en/articles/20001106-codex-rate-card)

If “cost” instead means subscription cash already paid and all three models are comfortably within allowance, record the official relative credit multipliers (`Sol 1.0×`, `Terra 0.5×`, `Luna 0.2×`) alongside the table rather than pretending the 1–10 score is precise.

## Practitioner-source status

Ben Davis is the clearest first-party practitioner source found: he recommends `high` for all three models but keeps Sol as the default coding model. No current Theo/T3 source found in this pass offered specific Luna-versus-Terra routing guidance, so the recommendation above does not attribute such a policy to Theo or T3.
