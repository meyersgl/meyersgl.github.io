# Reviewing the Platform

The Social Democratic Market Platform is presented for critical evaluation. Version 1.3, the Costed Edition, compares every program with published cost and revenue estimates and tests what its revenue can pay for. Those estimates are comparable figures and the author's own arithmetic, **not independent scores**. Expert review is the next step.

Agreement is not required. The most useful review finds a weak assumption, a wrong number, or a design that will not work, and says why.

## Where review is most needed

These are the questions where the platform's own analysis is weakest or the stakes are highest. Each points to the place in the full platform where the issue is set out.

| Area | Question | Where |
| --- | --- | --- |
| Revenue estimates | Are the ranges for the federal tax fairness measures reasonable, given that they come from different models and baselines and are not additive? | Appendix E.1.1; Chapter 2 |
| Wealth tax | Would an annual 2 to 3 percent tax on net worth above \$50 million survive a Direct Tax Clause challenge, and is \$2.1 to \$6.2 trillion over ten years plausible after avoidance? | Section 2.1; Appendix E.1.2 |
| Capital gains rates | With the top rate on gains at 55.8 percent, above the estimated revenue-maximizing rate of about 42 percent, how much will the investment-income contribution actually raise? | Sections 2.7.1, 2.7.5, 2.13 |
| Low-confidence costs | Homelessness vouchers, preschool and childcare caps, student-loan reform, universal vouchers, and K-12 equity rest on the author's arithmetic. Better estimates are especially welcome. | Appendix E.2.1 |
| Universal Health Insurance | What contribution rates would balance the Trust Fund within the 60 percent wage ceiling, and how should employer premiums convert into contributions? | Universal Health Insurance white paper, Open Policy Questions; Appendix E.4 |
| Social Security | How should the remaining gap of about 1.3 to 1.7 percent of taxable payroll be closed without benefit cuts or a higher retirement age? | Social Security white paper, Open Policy Question; Section 26.6 |
| Paid leave | Is 0.6 to 1.0 percent of taxable payroll realistic for the progressive benefit in Section 3.3, given how much leave-taking may rise once leave is paid? | Section 3.3; Appendix E.4 |
| Phase-in rules | Do the tier order, the full-funding rule, and the narrow wealth-tax exception work as written, or do they create gaps or perverse incentives? | Section 27.9; decisions 0030 to 0039 |
| Legal design | Do the post-*Slaughter* designs (private rights of action, state attorney general enforcement, legislative-branch bodies) hold up? | Appendix C |
| Senate rules | Is the paid-for majority rule with a declining cloture threshold workable and fair to future minorities? | Appendix B |

## How to submit a review

1. **Issues** are best for a specific, fixable point. Use the template that fits:
   - **Cost or revenue estimate**: you have a better estimate, source, or method for a row in Appendix E.
   - **Fact-check**: a statistic, date, or legal reference is outdated or wrong.
   - **Contradiction report**: two parts of the platform, papers, or website disagree.
   - **Policy feedback**: a proposal is wrong, weak, or missing something.
2. **Discussions** are best for open questions with no single answer, such as how to close the Social Security gap or how to set UHI rates.
3. **Email** the author through the website's contact section for feedback you would rather not post publicly, or for longer written reviews.

Name the exact section (for example, "Section 27.9" or "Appendix E.2.1, Universal preschool"). Include evidence where you can: a citation, a published estimate, or your own calculation with its assumptions.

## The evidence standard

- **Estimates** should state their source, date, budget window, and whether they are conventional or dynamic, and note how the design they score differs from the platform's. These are the columns in Appendix E and in `data/costing.csv` and `data/revenue-estimates.csv`.
- **Statistics** need a source and an as-of date.
- **Disagreement is recorded, not hidden.** Where a reviewer's estimate differs and the platform keeps its own, Appendix E will show both.

## Disclosure and credit

Please say briefly what your relevant expertise is and disclose any financial or organizational interest in the outcome. Reviewers who wish to be named will be credited in the changelog and in the edition that adopts their feedback. Anonymous review is welcome.

## What happens next

Every adopted change is made in a pull request, recorded in `decisions/` if it settles a policy choice, and released in a tagged edition with a changelog entry. Feedback that is not adopted, and the reason, will be noted in the issue or discussion. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for how changes are made.
