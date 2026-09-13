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
8. Export type — text | audio | video
9. If video — picture pairing last — none | imagine-ffmpeg | blitzreels | wangnov | cine | hyperframes
10. If video and pairing is not none — deliverable (stills | clips | cut | motion-graphics | multi-scene-film), aspect, duration budget, quality band (default 10)
11. If audio — voice cast intent and production tier

Write answers into `bible.md` as you go. After gates, restated logline in one sentence and wait.

Export type before pairing. If `text`, set pairing to `none` and skip Camera / Boards later. If `audio`, skip picture pairing. Picture pairing is last only for `video`.

Suggested last-turn prompt (counts as the two questions):

> Export type — text pages, audio/audiobook, or video?
> If video — pairing Imagine+ffmpeg, BlitzReels, Wangnov, Cine, HyperFrames, or none? Band starts at 10.

Do not write scenes during intake.
