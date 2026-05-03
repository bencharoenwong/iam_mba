# Council Verdict: Architecture for Self-Contained Course Companion

## Verdict
**Adopt the "Core + Shell" architecture using Quarto Profiles.**

The "Core + Shell" approach (suggested by the Adversarial Critic and endorsed in peer review) is superior to the "Inline Tagging" approach. By keeping the timeless financial theory in pristine chapters and isolating course logistics into dedicated files or clearly defined "shell" components, you avoid "tag soup" and preserve a clear path to publication.

## Reasoning
1. **Pristine Theory (Core):** All 14 chapters should focus exclusively on financial theory, case studies, and guiding questions. These are the "Core" and remain identical across all versions.
2. **Isolated Logistics (Shell):** INSEAD-specific items (grading, AI policy, assignment schedules) should live in their own files (e.g., `syllabus.qmd`) or be relegated to the `index.qmd` preface.
3. **Selective Rendering:** Use Quarto Profiles (`_quarto-course.yml` vs. `_quarto-book.yml`) to control which "Shell" files are included in the build and to customize the book's title/subtitle for each audience.
4. **Clean Authoring:** This approach avoids littering the markdown with conditional tags, making the files easier to maintain and more attractive to potential publishers.

## Dissent Worth Hearing
Advisors 3 (Architect) and 5 (Feasibility) initially preferred inline tags for their granular control. However, peer review correctly identified that this "granularity" is a trap: it creates a "logic puzzle" for future editors and risks "logistics leakage" where classroom alerts accidentally end up in the professional textbook.

## Blind Spots Surfaced
The "Core + Shell" model was identified as the only path that protects the "intellectual rigor" of the financial theory while still satisfying the "practical utility" of the course companion. It solves the maintenance problem not through clever code, but through clean structural boundaries.

## Concrete Next Steps
1. Create `_quarto-course.yml` (INSEAD Companion) and `_quarto-book.yml` (Textbook Edition).
2. Move all logistics and course-specific requirements from `index.qmd` into a new `syllabus.qmd` file.
3. Configure `_quarto-course.yml` to include `syllabus.qmd` and `_quarto-book.yml` to exclude it.
4. Review assignment-specific alerts in chapters (like LiveCase notes) and decide if they should be moved to `syllabus.qmd` or kept as standardized "Assignment Guide" sections that can be hidden via profile-level CSS.

## Confidence
**High.** This architecture balances immediate pedagogical needs with long-term commercial flexibility.
