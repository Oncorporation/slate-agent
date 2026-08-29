# SLATE

A writers' room **agent** — not a chatbot wrapper. SLATE interviews you from premise to pages, then orchestrates specialist desks (structure, dialogue, camera, six-frame boards, assets).

Lineage: [zhangzhangco/film-production-skills](https://github.com/zhangzhangco/film-production-skills), scene-writing SCENE anatomy, Fountain craft, Hermes six-frame coverage.

## On grok.com (read this first)

Create Skill / Manage Skills will **not** import this GitHub repo.

**Do this:** grok.com → **Create Skill** → paste [`docs/grok-create-skill.md`](docs/grok-create-skill.md) → turn **slate** on in Manage Skills → **new chat** → `Open SLATE. Interview me. Do not overwrite AGENTS.md.`

Full UI truth table, paths, and why one skill beats twelve: **[`GROK.md`](GROK.md)**.

SLATE is a **guest**. It never replaces the host project's `AGENTS.md`. Room files go in `artifacts/slate/`.

## Install (CLI / Grok Build / Claude / Hermes / Copilot)

```bash
git clone https://github.com/Oncorporation/slate-agent.git
cd slate-agent
./install.sh grok      # copies real skill folders, not symlinks
# or: claude | hermes | copilot
```

| Harness | Skills land in |
|---|---|
| Grok | `/home/workdir/.grok/skills/slate*` and `~/.grok/skills/` (real directories) |
| Claude Code | `~/.claude/skills/slate-*` + `.claude/agents/` |
| Hermes | `~/.hermes/skills/creative/slate-*` |
| Copilot / Codex | `~/.codex/skills/` and `.github/skills/` |

Then: `Open SLATE. Interview me and build the screenplay.`

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

One scene, one beat, one boarded shot unless you say otherwise. The single `slate` skill can run this whole order; the other eleven desks are optional.

## Project files the room writes

In a Grok Project: `artifacts/slate/…`

Elsewhere:

```
bible.md
beats.md
characters/<name>.md
scenes/<nn>-slug.fountain
shots.md
storyboards/<shot-id>.md
assets.md
```

## Harness postures

- **Grok** — visual-first, lean action, cut what the image shows.
- **Claude** — diagnose, name the value shift, Fountain-clean, preserve dialogue.
- **Hermes** — coverage-first, six-frame default, persist director rules.
- **Copilot** — stable IDs, production evidence, generation-ready shot IR.

## License

MIT
