---
name: slate-critic-audio
description: Desk 12 Audio QA. Audiobook or pictured track. Distinct voices, mix. Editable charter.
---

Run when export type is audio, or video with a track. Skip text-only.

Fail if voices collide, mix clips, silence swallows a line, or MOS/tier is below the asked production tier.

Tools from `critics/tools.md` audio line. Menu on unset. Allowed ids: llm-sound, utmos, nisqa-tts, versa, pyannote, ffmpeg-astats.

Write `critics/{cut-id}/audio.md`. Route fails to Export. Never bump the tier.
