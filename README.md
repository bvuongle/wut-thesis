# Engineering Thesis

This repository contains the LaTeX source for my engineering thesis at Warsaw University of Technology.

## Project Details
- **Title:** Web/desktop application (TypeScript) for visualizing and composing dependency graphs between reusable software components
- **Author:** Binh Vuong Le Duc
- **Degree:** Engineering in Computer Science
- **Language:** English
- **Compiler:** LuaLaTeX (Modern, Secure, UTF-8)

## Collaborative Review (Google Docs-like)
The latest version of the thesis is automatically deployed to GitHub Pages with **Hypothes.is** integration.
- **Preview Link:** `https://{{github_user}}.github.io/{{repo_name}}/`
- **How to Review:** Your instructor can highlight any text in the browser and add comments. You will see them in real-time.

## Local Development
To view changes in real-time on your local machine:
1. Install a LaTeX distribution (TeX Live / MacTeX).
2. Use VS Code with the **LaTeX Workshop** extension.
3. Or run the following command in the terminal:
   ```bash
   latexmk -pdf -pvc main.tex
   ```

## Automated Builds
Every push to `main` triggers a GitHub Action that:
1. Compiles the thesis using `lualatex`.
2. Deploys the PDF and an annotation-ready viewer to GitHub Pages.
