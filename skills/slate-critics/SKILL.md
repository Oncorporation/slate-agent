---
name: slate-critics
description: >
  Use after Export as SLATE desk 12 Critics. Review the previous cut for
  dialogue, direction, continuity, scene, picture QA, or audio QA. First use
  presents a per-subagent tool menu. Triggers on critics desk, review the cut,
  Picture QA, Audio QA, hold the cut.
version: 1.0.0
metadata:
  hermes:
    category: creative
    tags: [critics, review, qa, continuity, dialogue]
---

# Critics desk (12)

Review desk. Not a Producer. Notes only.

Producers are desks 2–11. Critics never edit Fountain, `beats.md`, `shots.md`, boards, or `assets.md`.

Showrunner routes fail notes to the owning Producer. Human holds the previous cut. No land and no quality-band bump without the writer.

## When to run

After Export writes a cut. Skip Picture QA unless export type is `video`. Skip Audio QA unless type is `audio` or the video cut has a track.

## Cut record

Write under the output root:

```
critics/tools.md
critics/{cut-id}/manifest.md
critics/{cut-id}/dialogue.md
critics/{cut-id}/direction.md
critics/{cut-id}/continuity.md
critics/{cut-id}/scene.md
critics/{cut-id}/picture.md    # video only
critics/{cut-id}/audio.md      # audio, or video with a track
```

`{cut-id}` = `{export-type}-{band}-{date}` or the Export folder name. Point `bible.md` **Previous cut** at this id.

Manifest fields: export type, band, files reviewed, scouts run, tools used, open holds.

## First use — tool menu

Each scout is editable (`agents/critic-*.md` plus `critics/tools.md`).

On first use of a scout (that scout has no `tools:` line, or `tools: unset`):

1. Load `references/menus.md`.
2. Show **only that scout's** menu. Fit the job. Do not list Picture tools on Dialogue.
3. Wait. Do not review yet.
4. Write picks into `critics/tools.md`.
5. Next turn, run those tools.

If the writer edits `critics/tools.md` or a `agents/critic-*.md` charter, obey the file. Re-show a menu only when they say `reset critic tools` or a scout is still `unset`.

`llm-craft` is always on. Other tools are opt-in.

Copy `templates/critics/tools.md` to `critics/tools.md` if missing.

## Run order

1. Confirm previous cut path + export type + band.
2. Gate tools (menu if unset).
3. Spawn the matching scouts. Parallel notes allowed. One report file each.
4. Fold pass/fail into `manifest.md`.
5. Hold for the writer. Present the cut + scores + fails.
6. On writer accept — lock story at this band. On patch — list owning Producers. On bump — only if story scouts passed and the writer said so.

## Verdict

Each scout report: `pass` | `fail` | `hold`. Evidence first (tool output), then craft note. Cite Fountain lines, `sh_` ids, or timestamps.

Story scouts (Dialogue, Direction, Continuity, Scene) must pass before any video band above 10 or any audio tier bump.

## Quality bands (video)

- 0–25 simple animation / storyboard
- 26–50 illustrated
- 51–75 CGI
- 76–100 cinematic photoreal

Default ladder: band 10 → story lock + human accept → 65 or 90.

Text has no picture band. Audio uses production tier via Audio QA, not photoreal scores.

## Routing

| Scout fail | Route to |
|---|---|
| Dialogue | Dialogue Producer |
| Direction | Camera and/or Scene |
| Continuity | Casting, Architect, or Scene |
| Scene | Drama and/or Scene |
| Picture QA | Export only |
| Audio QA | Export only |

## Load

- `references/tools.md` — repos and what each tool measures
- `references/menus.md` — first-use menus
- matching `agents/critic-*.md`
