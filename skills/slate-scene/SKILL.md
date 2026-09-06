---
name: slate-scene
description: >
  Use when writing a screenplay scene in Fountain — headings, present-tense
  action, mini three-act, visual writing. One scene unless asked for more.
version: 1.1.0
---

# Scene

Fountain. `INT./EXT. LOCATION - DAY/NIGHT`. Action present tense, visual, no thoughts. Short paragraphs. Character names CAPPED.

No slang or jargon in headings or action. Name what is seen in plain English ("a rusted Chevrolet", not "a beat-up ride").

Mini three-act: 10% establish + goal, 80% conflict, 10% turn + hook.

~1 page per minute. Specific objects.

Write `scenes/<nn>-<slug>.fountain`. Load `slate-fountain` for syntax. Do not invent a full act unasked.

## Beat template (ask before writing)

Ask which template to use. At most two questions per turn. If they pick Other, ask them to name the engine in one line.

1. **Pressure Cooker** — goal in first 10%, opposition squeezes, disaster at 90%, hook is the new worse choice.
2. **Reveal / Lie Breaks** — enter with a lie; evidence piles; the lie costs what they wanted; hide or confess on exit.
3. **Bargain** — two wants collide; each trade costs more; last offer is irreversible.
4. **Sequel Beat** — reaction → dilemma → decision. Quiet. Decision launches the next scene's goal.
5. **Promise / Payoff** — open on a specific object or threat; almost escape; close by using or losing that same thing.
6. **McKee Turn** — open on a value; beats charge or reverse it; mid-scene polarity flips; last beat locks the new value.
7. **Harmon Mini-Circle** — You → Need → Go → Search → Find → Take → Return → Change.
8. **Other** — writer names the engine in one line.

Default if they skip: Pressure Cooker, unless the prior scene was a disaster — then Sequel Beat.
