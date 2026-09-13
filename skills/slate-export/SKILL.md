---
name: slate-export
description: >
  Use as SLATE Producer desk 11 after Boards or pages. Export a typed cut —
  text pages, audio/audiobook, or video pairing package. Triggers on export
  picture, export text, export audio, pairing package, ImagineFfmpeg.
version: 1.0.0
metadata:
  hermes:
    category: creative
    tags: [export, picture, pairing, ffmpeg]
---

# Export desk

Producer 11. Not last — Critics (12) reviews the cut this desk writes.

Read-only projection of locked pages / boards. Never edit Fountain, `beats.md`, or `shots.md`.

Bible **Export type:** `text` | `audio` | `video`.

At lock, Showrunner asks the matching prompt:

- text — Export locked pages as the cut?
- audio — Export voiced cut / audiobook at this production tier?
- video — Export picture package for **{pairing}** at band **{band}**? Scene-only or whole locked cut?

Write:

- `text` → `exports/text/{cut-id}/` (Fountain copy or print)
- `audio` → `exports/audio/{cut-id}/`
- `video` → `exports/{pairing}/` plus `exports/video/{cut-id}/` pointer

Default video band is 10 until story critics pass and the writer accepts.

## Contract

- Read `assets.md`, `shots.md`, `storyboards/<id>.md`, Fountain for dialogue only.
- Write `exports/_ir.md` and `exports/{pairing}/{Vendor}{Product}.{role}.md`.
- Never edit Fountain, `beats.md`, or Camera `shots.md`.
- Do not invent `sh_` IDs or coverage.
- One boarded shot → one picture job. No whole-act generate.
- If pairing changes, regenerate the folder. Do not fork `shots.md`.
- Verify every `sh_` in the package exists in `shots.md`. Frame count is 6 or an explicit override.

Roles: `manifest`, `shots`, `boards`, `assets`, `cut`, `constraints`.

## Pairings

| bible pairing | folder | prefix | default use |
|---|---|---|---|
| imagine-ffmpeg | `exports/imagine-ffmpeg/` | `ImagineFfmpeg` | concept / short stills → clips → ffmpeg stitch |
| blitzreels | `exports/blitzreels/` | `BlitzReels` | editor after picture exists (captions, export) |
| wangnov | `exports/wangnov/` | `Wangnov` | research + Imagine + ffmpeg |
| cine | `exports/cine/` | `CineStudio` | multi-scene Imagine film job queue |
| hyperframes | `exports/hyperframes/` | `HyperFrames` | title / HUD / motion-graphics only |

Copy shapes from `templates/exports/`.

### Imagine + ffmpeg

`ImagineFfmpeg.shots.md`, `.boards.md`, `.cut.md`.
Stills from frames → animate approved frames → ffmpeg concat.
Must not write `scenes/` or `beats.md`.

### BlitzReels

`BlitzReels.shots.md`, `.cut.md`, `.constraints.md`.
Owns captions, punch-in, export preset. Must not invent coverage or new `sh_` IDs.

### Wangnov

`Wangnov.assets.md`, `.shots.md`, `.pipeline.md`.
Research may patch `assets.md` only after Showrunner approval. Must not change logline or beats.

### Cine Studio

`CineStudio.shots.md`, `.manifest.md`.
One SLATE scene → one Cine timeline block. One boarded shot → one Cine job. Planner must not add scenes.

### HyperFrames

`HyperFrames.shots.md`, `.boards.md`.
Only shots tagged `gfx` or `title`. Skip live-action rows.

## Shared IR

Write `exports/_ir.md` from `templates/exports/_ir.md` before pairing files.
