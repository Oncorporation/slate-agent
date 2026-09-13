# First-use menus

Show only the scout being configured. Mark `llm-craft` as already on. Wait for picks before reviewing.

## Dialogue

```
Desk 12 / Dialogue — pick tools (edit later in critics/tools.md)

Already on: llm-craft

[ ] screenpy        parse speakers / lines / said-vs-shown
[ ] voice-stats     per-character voice fingerprint
[ ] faster-whisper  ASR cut vs Fountain (audio/video)
[ ] pyannote        diarize voices (audio/video)
[ ] llm-sound       host audio model on the mix (audio/video)

Reply with ids, or "defaults" (screenpy + voice-stats; add whisper+pyannote if cut is audio/video).
```

## Direction

```
Desk 12 / Direction — pick tools

Already on: llm-craft

[ ] screenpy         headings and stage direction
[ ] drameter         tempo, density, transitions
[ ] pyscenedetect    cuts vs shots.md (video)
[ ] vqascore         frame vs shot prompt (video)
[ ] ffmpeg-detect    freeze / black (video)
[ ] llm-vision       host vision on boards/frames (video)

Defaults: screenpy + drameter; add pyscenedetect + llm-vision if video.
```

## Continuity

```
Desk 12 / Continuity — pick tools

Already on: llm-craft

[ ] constory         contradiction checker with cites
[ ] screenpy         names / places vs bible
[ ] insightface      face lock across shots (video)
[ ] whisper-order    spoken order vs pages (audio/video)
[ ] llm-vision       wardrobe / prop lock on frames (video)

Defaults: constory + screenpy; add insightface + llm-vision if video.
```

## Scene

```
Desk 12 / Scene — pick tools

Already on: llm-craft

[ ] drameter         does the scene move
[ ] screenpy         heading + action + turn present
[ ] speaker-graph    relationship/fact unchanged

Defaults: drameter + screenpy.
```

## Picture QA (video only — do not show on text/audio)

```
Desk 12 / Picture QA — pick tools

Already on: llm-vision

[ ] vqascore          prompt fidelity
[ ] pyscenedetect     coverage vs boards
[ ] pyiqa             no-ref still quality
[ ] ffmpeg-artifacts  block / blur / freeze
[ ] dover             clip technical vs aesthetic
[ ] style-probe       band label (10 / 50 / 65 / 90)

Defaults: llm-vision + vqascore + style-probe + ffmpeg-artifacts.
```

## Audio QA (audio, or video with a track — do not show on text-only)

```
Desk 12 / Audio QA — pick tools

Already on: llm-sound

[ ] utmos           speech MOS
[ ] nisqa-tts       TTS naturalness
[ ] versa           multi-metric harness
[ ] pyannote        distinct voices
[ ] ffmpeg-astats   clip / silence / peaks

Defaults: llm-sound + utmos + pyannote.
```
