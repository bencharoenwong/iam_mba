#!/usr/bin/env bash
# Build llms-full.txt — a single-file concatenation of the textbook
# source for direct ingestion into LLM context windows.
#
# Output is plain markdown: the same .qmd source seen by readers,
# with chapter separators. Pre-render hook in _quarto.yml runs this
# automatically, and CI re-runs on every push.
set -euo pipefail

cd "$(dirname "$0")/.."

OUT="llms-full.txt"
DATE="$(date -u +%Y-%m-%d)"

{
  cat <<EOF
# Investments and Asset Management — Full Text

> Single-file concatenation of the IAM-SG textbook by Ben Charoenwong (INSEAD MBA, 2026).
> Generated: ${DATE}. Source: https://github.com/bencharoenwong/iam_mba
>
> This file exists so any LLM can ingest the entire textbook in one paste.
> See llms.txt for the structured index, and SYMBOL_GLOSSARY.md for math notation.

---

EOF

  for f in index.qmd \
           ch01-asset-management-industry.qmd \
           ch02-financial-planning.qmd \
           ch03-market-efficiency.qmd \
           ch04-democratization.qmd \
           ch05-diversification.qmd \
           ch06-modern-portfolio-theory.qmd \
           ch07-active-vs-passive.qmd \
           ch08-factor-investing.qmd \
           ch09-active-strategies.qmd \
           ch10-security-selection.qmd \
           ch11-risk-management.qmd \
           ch12-esg-sustainability.qmd \
           ch13-alternative-investments.qmd \
           ch14-ai-asset-management.qmd \
           references.qmd; do
    if [[ -f "$f" ]]; then
      printf '\n\n<!-- ===== Source file: %s ===== -->\n\n' "$f"
      cat "$f"
    fi
  done

  printf '\n\n---\n\n## Appendix: Symbol Glossary\n\n'
  if [[ -f SYMBOL_GLOSSARY.md ]]; then
    sed '1,/^# /d' SYMBOL_GLOSSARY.md
  fi
} > "$OUT"

echo "Wrote $OUT ($(wc -l < "$OUT") lines, $(wc -c < "$OUT") bytes)"
