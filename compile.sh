#!/bin/bash

# Ensure we are in the script's directory
cd "$(dirname "$0")"

echo "Starting LuaLaTeX compilation..."

# Use latexmk with -outdir to keep the root clean
# -pdflua for LuaLaTeX
# -synctex=1 for VS Code integration
# -interaction=nonstopmode for automated builds
# -shell-escape if needed for specific packages
latexmk -pdflua -synctex=1 -interaction=nonstopmode -outdir=build main.tex

if [ $? -eq 0 ]; then
    cp build/main.pdf ./thesis.pdf
    echo "Success! Thesis exported to thesis.pdf"
else
    echo "Error: Compilation failed. Check the logs in the 'build' directory."
    exit 1
fi
