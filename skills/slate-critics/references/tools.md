# Critic tool catalog

Opt-in tools. Desk 12 measures with these, then the scout judges. Scores do not land a cut.

## Shared

| id | repo / source | measures |
|---|---|---|
| llm-craft | host LLM | craft judgment (always on) |
| llm-vision | host vision model | frames vs shot/bible intent |
| llm-sound | host audio model | voice, mix, pace vs pages |

## Dialogue

| id | repo / source | measures |
|---|---|---|
| screenpy | https://github.com/drwiner/ScreenPy | speakers, lines, parentheticals, action vs talk |
| voice-stats | spaCy / textstat | per-`ch_` sentence length, type-token, filler |
| faster-whisper | openai-whisper / faster-whisper | ASR the cut, diff vs Fountain |
| pyannote | https://github.com/pyannote/pyannote-audio | diarize; fail shared or split voices |

## Direction

| id | repo / source | measures |
|---|---|---|
| screenpy | https://github.com/drwiner/ScreenPy | headings, shot type, stage direction |
| drameter | https://github.com/madoleary/drameter | scene tempo, action vs dialogue density, transitions |
| pyscenedetect | https://github.com/Breakthrough/PySceneDetect | detected cuts vs `shots.md` |
| vqascore | https://github.com/linzhiqiu/t2v_metrics | frame/clip vs shot prompt |
| ffmpeg-detect | ffmpeg `freezedetect` `blackdetect` | dead holds, accidental black |

## Continuity

| id | repo / source | measures |
|---|---|---|
| constory | https://github.com/Picrew/ConStory-Bench (ConStory-Checker) | character / fact / timeline / world contradictions with cites |
| screenpy | https://github.com/drwiner/ScreenPy | names and locations vs bible |
| insightface | InsightFace / face embed | same `ch_` across video shots |
| whisper-order | faster-whisper timestamps | spoken order vs scene order |

## Scene

| id | repo / source | measures |
|---|---|---|
| drameter | https://github.com/madoleary/drameter | complexity, pause, whether the scene moves |
| screenpy | https://github.com/drwiner/ScreenPy | heading + action + turn present |
| speaker-graph | NetworkX on speakers / asset state | relationship or fact unchanged → fail candidate |

Value-shift judgment stays on llm-craft. Tools only prove structure.

## Picture QA (video)

| id | repo / source | measures |
|---|---|---|
| vqascore | https://github.com/linzhiqiu/t2v_metrics | prompt fidelity |
| pyscenedetect | https://github.com/Breakthrough/PySceneDetect | coverage vs boarded shots |
| pyiqa | IQA-PyTorch (NIQE, MUSIQ, CLIP-IQA) | no-ref still look |
| ffmpeg-artifacts | ffmpeg `blockdetect` `blurdetect` `freezedetect` | encode junk |
| dover | FAST-VQA / DOVER | clip technical vs aesthetic |
| style-probe | OpenCLIP zero-shot | band label (storyboard / illustrated / CGI / photo) |

Do not invent a photoreal score from chat when frames exist. Run a listed tool or llm-vision on frames.

## Audio QA (audio, or video with a track)

| id | repo / source | measures |
|---|---|---|
| utmos | https://github.com/tarepan/SpeechMOS | MOS naturalness |
| nisqa-tts | https://github.com/gabrielmittag/NISQA | TTS naturalness + color |
| versa | https://github.com/ftshijt/speech_evaluation | UTMOS / DNSMOS / speaker similarity harness |
| pyannote | pyannote-audio | distinct voices per `ch_` |
| ffmpeg-astats | ffmpeg `astats` `silencedetect` | clip, holes, peak slam |

PESQ is withdrawn. Prefer UTMOS / NISQA / ViSQOL.
