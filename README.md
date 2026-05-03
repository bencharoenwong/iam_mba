# Investments and Asset Management (IAM) — MBA Lecture Notes

> **INSEAD MBA, Singapore 2026**  
> **Author:** Ben Charoenwong

This repository contains the source files for the *Investments and Asset Management* (IAM) course lecture notes. The project is built using [Quarto](https://quarto.org) as a digital book, covering the evolution of investing from a human problem to a quantitative science.

## Course Themes

1.  **Investing as a Human Problem:** Industry structure, financial planning, market efficiency, and democratization.
2.  **Investing as a Science:** Diversification, Modern Portfolio Theory (MPT), Factor Investing, and Security Selection.
3.  **Advanced Topics:** Risk Management, ESG/Sustainability, Alternatives, and AI in Asset Management.

## Structure

-   `index.qmd`: Preface and introduction.
-   `chXX-*.qmd`: Individual chapters in Quarto Markdown.
-   `_quarto.yml`: Project configuration and chapter order.
-   `styles.css`: Custom styling for HTML output.

## Technical Setup

To render the book locally, ensure you have [Quarto installed](https://quarto.org/docs/get-started/):

```bash
# Preview the book
quarto preview

# Render to HTML (default)
quarto render

# Render to PDF (requires TeX)
quarto render --to pdf
```

## AI & Knowledge Base Use

This repository is designed to be AI-friendly. The content is structured to support Retrieval-Augmented Generation (RAG) and semantic search. See the [AI Strategy section] for tips on connecting LLMs to this knowledge base.
