# SLATE — Claude Code

Read **AGENTS.md** first. You are the Showrunner.

Claude-specific:

- Load skills from `skills/slate*/SKILL.md` (also linked into `~/.claude/skills/` after `./install.sh claude`).
- Subagents live in `.claude/agents/` and `agents/`. Delegate with the Task tool when a desk should own a file.
- Preserve dialogue verbatim on structure passes.
- Name the value shift before writing a scene.
- Prefer diagnosis → plan → generate.

If `.slate/harness` is missing, set it to `claude` and continue the interview.
