#!/usr/bin/env bash
# SLATE — install skills + subagents for grok | claude | hermes | copilot
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
HARNESS="${1:-auto}"

detect() {
  if [[ -n "${HERMES_HOME:-}" || -d "${HOME}/.hermes/skills" ]]; then
    if command -v hermes >/dev/null 2>&1; then echo hermes; return; fi
  fi
  if [[ -d "${HOME}/.claude/skills" || -n "${CLAUDE_CODE:-}" ]]; then
    echo claude; return
  fi
  if [[ -d "${HOME}/.codex/skills" || -n "${CODEX_HOME:-}" ]]; then
    echo copilot; return
  fi
  if [[ -d "${HOME}/.grok/skills" ]]; then
    echo grok; return
  fi
  echo grok
}

if [[ "$HARNESS" == "auto" ]]; then
  HARNESS="$(detect)"
  echo "Detected harness: $HARNESS"
fi

case "$HARNESS" in
  grok|claude|hermes|copilot|codex) ;;
  *)
    echo "Unknown harness: $HARNESS (use grok|claude|hermes|copilot)" >&2
    exit 1
    ;;
esac
[[ "$HARNESS" == "codex" ]] && HARNESS=copilot

mkdir -p "$ROOT/.slate"
echo "$HARNESS" > "$ROOT/.slate/harness"

link_skill() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  ln -s "$src" "$dest"
  echo "  skill → $dest"
}

copy_skill() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  mkdir -p "$dest"
  cp -a "$src/." "$dest/"
  echo "  skill copy → $dest"
}

copy_agent() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  rm -f "$dest"
  cp "$src" "$dest"
  echo "  agent copy → $dest"
}

link_agent() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  rm -f "$dest"
  ln -s "$src" "$dest"
  echo "  agent → $dest"
}

SKILLS=(slate slate-interview slate-premise slate-structure slate-drama slate-dialogue slate-character slate-scene slate-assets slate-camera slate-boards slate-fountain slate-export)
AGENTS=(showrunner premise architect drama dialogue casting scene assets camera boards export)

echo "Installing SLATE for $HARNESS"

case "$HARNESS" in
  grok)
    grok_roots=("$HOME/.grok/skills")
    [[ -d /workspace/.grok/skills ]] && grok_roots+=("/workspace/.grok/skills")
    mkdir -p /home/workdir/.grok/skills && grok_roots+=("/home/workdir/.grok/skills")
    grok_agent_roots=("$HOME/.grok/agents")
    [[ -d /workspace/.grok ]] && grok_agent_roots+=("/workspace/.grok/agents")
    mkdir -p /home/workdir/.grok/agents && grok_agent_roots+=("/home/workdir/.grok/agents")
    for dest_root in "${grok_roots[@]}"; do
      mkdir -p "$dest_root"
      for s in "${SKILLS[@]}"; do
        copy_skill "$ROOT/skills/$s" "$dest_root/$s"
      done
    done
    for dest_root in "${grok_agent_roots[@]}"; do
      mkdir -p "$dest_root"
      for a in "${AGENTS[@]}"; do
        copy_agent "$ROOT/agents/$a.md" "$dest_root/slate-$a.md"
      done
    done
    ;;
  claude)
    for s in "${SKILLS[@]}"; do
      link_skill "$ROOT/skills/$s" "$HOME/.claude/skills/$s"
    done
    mkdir -p "$HOME/.claude/agents" "$ROOT/.claude/agents"
    for a in "${AGENTS[@]}"; do
      link_agent "$ROOT/agents/$a.md" "$HOME/.claude/agents/slate-$a.md"
      link_agent "$ROOT/agents/$a.md" "$ROOT/.claude/agents/slate-$a.md"
    done
    ;;
  hermes)
    for s in "${SKILLS[@]}"; do
      link_skill "$ROOT/skills/$s" "$HOME/.hermes/skills/creative/$s"
    done
    ;;
  copilot)
    DEST="${CODEX_HOME:-$HOME/.codex}/skills"
    mkdir -p "$DEST" "$ROOT/.github/skills" "$ROOT/.github/agents"
    for s in "${SKILLS[@]}"; do
      link_skill "$ROOT/skills/$s" "$DEST/$s"
      link_skill "$ROOT/skills/$s" "$ROOT/.github/skills/$s"
    done
    for a in "${AGENTS[@]}"; do
      link_agent "$ROOT/agents/$a.md" "$ROOT/.github/agents/slate-$a.md"
    done
    ;;
esac

echo
echo "Harness '$HARNESS' written to .slate/harness"
echo "Open this directory in $HARNESS and say: Open SLATE. Interview me."
