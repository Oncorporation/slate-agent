---
name: slate-interview
description: >
  Use when starting a new SLATE project or when bible.md is thin — interview the
  writer for premise, genre, format, length, tone, and whose story it is. At most
  two questions per turn.
version: 1.0.0
metadata:
  hermes:
    category: creative
    tags: [interview, premise, intake]
---

# Interview

Copy `templates/bible.md` to `bible.md` if missing.

Ask only what is blank:

1. Whose story / want
2. What happens if they fail (stakes)
3. Genre + two comparables
4. Format: concept | short | feature | episode
5. Length (pages or minutes)
6. Tone (and what to avoid)
7. World / setting
8. Picture pairing (last gate) — none | imagine-ffmpeg | blitzreels | wangnov | cine | hyperframes
9. If pairing is not none — deliverable (stills | clips | cut | motion-graphics | multi-scene-film), aspect, duration budget

Write answers into `bible.md` as you go. After gates, restated logline in one sentence and wait.

Picture pairing is the last interview step. Ask it after format + length and world. If `none`, skip Export later.

Suggested last-turn prompt (counts as the two questions):

> Picture pairing — Imagine+ffmpeg, BlitzReels, Wangnov, Cine, HyperFrames, or none?
> When boards lock, export `{Pairing}.shots.md` + `{Pairing}.boards.md` into `exports/{pairing}/`?

Do not write scenes during intake.
