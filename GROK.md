# SLATE on grok.com

Yes — but only as **one skill at a time**. The grok.com UI will not swallow this repo as a project plugin.

## What those buttons are

**Create Skill** is Skill Creator. You describe a workflow (or paste a `SKILL.md`) and Grok writes a folder under your user skills. Persistent path on Grok:

- `/home/workdir/.grok/skills/<name>/` (account skills — survives chats)
- this App Builder / Grok Project also loads `/workspace/.grok/skills/<name>/`

**Manage Skills** is your account list: on / off, edit, delete. It is for skills Grok already knows you own. It is **not** a GitHub installer and not an “attach this repo to the project” switch.

SLATE is **12 skills + 10 agent files + templates**. Manage Skills has no “import Oncorporation/slate-agent” action.

## What you can do in the UI

| Action | Works for SLATE? |
|---|---|
| Create Skill → paste `docs/grok-create-skill.md` (one orchestrator named `slate`) | **Yes. Do this.** |
| Create Skill 12 times, paste each `skills/slate-*/SKILL.md` | Yes, if you want every desk as its own toggle. Tedious. New chat after. |
| Manage Skills → toggle them on | Yes, after they exist. |
| Manage Skills → drop the GitHub repo / `install.sh` on the project | **No.** |
| + in the composer | **No.** Attachments only. |

If Create Skill asks for **scope**, pick **Project** only if that save lands in this project's files. In a Grok Project the durable law is the **host** `AGENTS.md` (often `artifacts/AGENTS.md`). **Do not let Skill Creator overwrite that with SLATE's `AGENTS.md`.**

## What actually binds SLATE to every chat in a project

1. Keep the **host** project's `AGENTS.md` (and any custom instructions) in the project. SLATE is a guest.
2. Put room output in `artifacts/slate/` (`bible.md`, `beats.md`, `characters/`, `scenes/` or `episodes/epNN/`).
3. Have the `slate` skill folder present when the **next** conversation starts (Create Skill once, or copy folders — see below).
4. First line: `Open SLATE. Do not overwrite AGENTS.md.`

## Practical recommendation

Do **not** hand-enter 12 skills in Manage Skills.

**Preferred:** one project skill named `slate` whose body is “read the host instructions, then run the SLATE desk order.” Paste from [`docs/grok-create-skill.md`](docs/grok-create-skill.md). That single skill is enough to drive a feature, a short, or multiple episodes. Extra desks are optional once the orchestrator exists.

**Optional full pack:** copy the 12 `skills/slate*/` folders as **real directories** (not symlinks) into `/home/workdir/.grok/skills/` and `/workspace/.grok/skills/`. `./install.sh grok` does that copy.

## After Create Skill

1. Open **Manage Skills** and confirm `slate` is **on**.
2. Start a **new** chat in the same project (skills are listed at session start).
3. Say: `Open SLATE. Interview me. Do not overwrite AGENTS.md.`
