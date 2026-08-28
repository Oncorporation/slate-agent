# SLATE

A writers' room **agent** — not a chatbot wrapper. SLATE interviews you from premise to pages, then orchestrates specialist **subagents** (structure, dialogue, camera, six-frame boards, assets) using **skills** that install for the harness you actually run: **Grok**, **Claude Code**, **Hermes**, or **Copilot / Codex**.

Lineage: [zhangzhangco/film-production-skills](https://github.com/zhangzhangco/film-production-skills) (breakdown, assets, camera), scene-writing SCENE anatomy, story-systems Fountain craft, Hermes six-frame coverage.

## Install

```bash
git clone https://github.com/Oncorporation/slate-agent.git
cd slate-agent
./install.sh            # auto-detect harness
# or:
./install.sh grok
./install.sh claude
./install.sh hermes
./install.sh copilot
```

The installer:

1. Detects (or takes) the harness.
2. Writes `.slate/harness` so later sessions do not re-ask.
3. Symlinks the matching skill set into that harness's skills directory.
4. Copies subagent profiles where the harness expects them.

| Harness | Skills land in | Subagents land in |
|---|---|---|
| Grok | `~/.grok/skills/slate-*` | `~/.grok/agents/` (if present) + project `agents/` |
| Claude Code | `~/.claude/skills/slate-*` | `~/.claude/agents/slate-*` and `.claude/agents/` |
| Hermes | `~/.hermes/skills/creative/slate-*` | Hermes loads skills; desks are skill-routed |
| Copilot / Codex | `~/.codex/skills/slate-*` or `.github/skills/` | `agents/` + `.github/agents/` |

Then open **this folder** (or a new screenplay folder that contains `AGENTS.md`) in that harness and say:

> Open SLATE. Interview me and build the screenplay.

## What happens

```
Showrunner (interview)
  ├─ Premise          logline, dramatic question, genre contract
  ├─ Architect        acts, Save the Cat beats, page map, pacing
  ├─ Drama            value shifts, SCENE anatomy, stakes
  ├─ Casting          want / need / lie / ghost, look, voice
  ├─ Scene            Fountain pages, action, headings
  ├─ Dialogue         subtext pass
  ├─ Assets           locations, props, identity anchors
  ├─ Camera           shot size, angle, move, blocking
  └─ Boards           exactly six frames per shot
```

The room **asks** before it dumps a feature. One scene, one beat, one boarded shot unless you say otherwise.

## Project files the room writes

```
bible.md
beats.md
characters/<name>.md
scenes/<nn>-slug.fountain
shots.md
storyboards/<shot-id>.md
assets.md
.slate/harness
```

## Harness postures

Generation quality still depends on the model. The **posture** is what changes:

- **Grok** — visual-first, lean action, cut what the image shows.
- **Claude** — diagnose, name the value shift, Fountain-clean, preserve dialogue.
- **Hermes** — coverage-first, six-frame default, persist director rules.
- **Copilot** — stable IDs, production evidence, generation-ready shot IR.

## License

MIT
