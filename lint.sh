#!/bin/bash

# Ensure we are in the script's directory
cd "$(dirname "$0")"

echo "🔍 Running ChkTeX on main.tex and chapters in tex/..."

# Check main.tex
chktex -q -v0 main.tex

# Check all .tex files in the tex/ directory
for f in tex/*.tex; do
    if [ -s "$f" ]; then
        echo "------------------------------------------------"
        echo "🔍 Checking $f..."
        
        echo "[ChkTeX - LaTeX Linting]"
        chktex -q -v0 "$f"
        
        echo -e "\n[Write-Good - Grammar & Phrasing]"
        npx --yes write-good "$f" --parse
    fi
done

echo "✅ Linting complete."
