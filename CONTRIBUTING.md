# Contributing feedback

This platform is presented for critical evaluation. Agreement is not required for useful feedback; identifying weak assumptions, unintended effects, and implementation barriers is the purpose of review.

## How to give feedback

Experts reviewing the costed edition should start with [`REVIEW.md`](REVIEW.md), which lists where review is most needed.

1. Open an issue with the template that fits:
   - **Policy feedback**: you think a proposal is wrong, weak, or missing something.
   - **Fact-check**: a statistic, date, or legal reference is outdated or wrong.
   - **Contradiction report**: two parts of the platform, papers, or website disagree.
   - **Cost or revenue estimate**: you have a better estimate, source, or method for a figure in Appendix E.
2. Name the exact section (for example "Chapter 26, 26.2" or "Social Security white paper, Reform One").
3. Include evidence: a citation, a link, or a published estimate. Feedback without evidence is welcome but is harder to act on.

## The evidence standard

- Every statistic needs a source and an as-of date. Statistics live in `data/baselines.yml`, not typed into chapters.
- Every program must name exactly one revenue stream from `data/revenue-streams.yml`. No revenue is counted twice.
- Planks marked *Statute – High Resistance* include an honest-limit note on their main legal or political risk.
- Where a white paper and the platform disagree, the white paper governs (decision 0001).

## How changes are made

Every change starts as an issue, is made in a pull request, and is released as a tagged edition. Settled choices are recorded in `decisions/`. The author decides what is adopted, and the changelog explains what changed and why.
