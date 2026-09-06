---
name: slate-export
description: >
  Use after Camera or Boards when bible picture pairing is not none. Projects
  locked shots into exports/{pairing}/ for Imagine+ffmpeg, BlitzReels, Wangnov,
  Cine Studio, or HyperFrames. Triggers on export picture, pairing package,
  ImagineFfmpeg, BlitzReels, CineStudio, HyperFrames.
version: 1.0.0
metadata:
  hermes:
    category: creative
    tags: [export, picture, pairing, ffmpeg]
---

# Export desk

Last desk. SLATE keeps `shots.md` and boards. This desk is a read-only projection.

Skip if `bible.md` pairing is `none`.

At lock, Showrunner asks:

> Export picture package for **{pairing}**? Scene-only or whole locked cut?

Then write only under `exports/{pairing}/`.

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
