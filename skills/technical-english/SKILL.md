---
name: technical-english
description: Write or rewrite technical text in plain, unambiguous English. Use when the user asks to write, rewrite, simplify, or clean up any writing.
metadata:
  author: centro-benefits
  version: "1.0"
---

Clear technical prose is decided one word at a time — not by a list of permitted
words, but by a habit of asking what each word denotes before you commit to it. A
reader who is translating as they go cannot recover your intent from context, so
every word has to carry its meaning alone.

The hazard is **fluency**. The word that arrives effortlessly arrives because it
is common, and common words are common because they have stretched to cover many
senses. That stretch is exactly what a controlled style removes. So the words you
reach for without thinking are the ones to look at hardest, and the sentence that
reads most smoothly to you is the one most likely to fail a reader who is
translating as they go.

The fix is **concreteness**. A word that names something a reader can point at
carries one sense. A word that names a quality, a judgment, or a category of
thought carries as many senses as there are readers.

## What actually goes wrong

Controlled measurement of unaided writing against a real controlled dictionary
found the failures land in one place. Structure comes out right on its own: a
competent writer already produces short active sentences in simple tenses, keeps
articles in, and holds one idea per sentence.

Every defect was a single word, and the worst of them were words that any checker
passes — ordinary words used in a sense the controlled style had narrowed. Naming
those words individually does not generalize: patching the specific words that
leaked in one text left the leak rate unchanged in the next, because a different
set leaked instead. What generalized was the judgment below.

## Step 1 — Fix the register

Two registers, and mixing them is itself a defect:

- **Instructional** — steps a reader performs. Command form, one instruction per
  sentence, 20 words maximum.
- **Explanatory** — how something works or what it is. No command form, one
  subject per sentence, 25 words maximum, information delivered gradually.

Settle which one you are in before the first sentence. Where the source text
mixes them, split it and treat each part separately.

## Step 2 — Draft for structure

Hold these while drafting and structure stops costing you attention:

- One idea per sentence, inside the word limit for your register.
- Active voice. Simple past, simple present, or simple future.
- Articles and demonstratives stay in.
- Paragraphs of six sentences maximum.
- A vertical list wherever a sentence would otherwise carry embedded clauses.
- Where a condition governs an instruction, the condition comes first.

## Step 3 — The word pass

Now go back through what you wrote and put every content word through four tests.
This is the work; the drafting was not.

**The pointing test — for every noun.** Can a reader point at what this names, or
count it, or measure it? A thing, a part, a document, a quantity, a location: it
passes. A quality, a benefit, an approach, a capability, a consideration: it
fails.

When a noun fails, do not hunt for a plainer synonym — the synonym is abstract
too. **Name the observable change instead, and let the reader draw the
conclusion.** This one move repairs most failures:

> _This approach offers significant performance benefits._
> → _The report opens in two seconds. Before, it opened in nine._

**The second-sense test — for every word that came easily.** Ask what else this
word means. Where you can produce a second sense in a moment, you have found the
risk: a controlled style keeps one sense per word, and you cannot know from the
inside which sense it kept. The tell is not obscurity, it is comfort — a short,
familiar, technical-feeling word you did not have to choose.

Rewrite so the sentence survives whichever sense the reader holds. Where a
sentence depends on the reader picking your sense, it is not yet controlled.

**The one-job test — for every word doing two jobs.** A controlled style
generally admits a word as one part of speech and refuses it as another. So a
word you are using as a verb because its noun was handy — or as a noun because
its verb was — is a word to replace with one that has only that job.

Related, and the more frequent version: **the action belongs in the verb.** Where
the verb is doing no work and a noun beside it carries the action, the sentence
has an abstraction where it should have an event.

> _Perform a validation of the input before submission._
> → _Validate the input before you submit it._

**The one-name test — across the whole text.** Choose one name per thing before
you write, capitalization included, and use that one every time. Every synonym
you introduce for variety is a new thing as far as the reader is concerned. This
is the only defect in this list that a fluent writer reliably produces and never
notices, because varying your wording is a habit good prose taught you.

**Done when** every noun has been through the pointing test, every effortless word
through the second-sense test, and one name per thing holds from the first
sentence to the last. A pass that found nothing was not a pass.

## Step 4 — Report the register and the limits

Give the text, then say which register you wrote in, and name the places where a
constraint cost meaning — a distinction you had to drop, a nuance the plainer
construction lost. That judgment belongs to the user, not to you.

State plainly that the result is unverified. Judgment gets a text most of the
way; only a dictionary settles whether a particular word is permitted.

The report is for the user, so it goes in the reply. Where the text is an
artifact — a PR description, an ADR, a doc page — the artifact carries the text
alone.

## Where a real standard applies

A published controlled language — ASD-STE100 and its like — settles wording with a
dictionary of permitted words, and no amount of judgment substitutes for one. Where
a reader needs certified compliance rather than clear prose, say so plainly and
name what this skill cannot give them: a verdict on whether each particular word is
permitted.
