# APPENDIX E: COSTING AND AFFORDABILITY

## Purpose

Chapter 27 requires every program to have a named funding source and an independent cost estimate before it takes effect. This appendix reports what is known today: the closest published estimate for each revenue measure and each program, and how far the revenue assigned to the General Fund reaches down the phase-in order in Section 27.9.

## Method

No figure in this appendix is an official score. The Congressional Budget Office and the Joint Committee on Taxation score legislation, not platforms. Each figure is the closest published estimate of a comparable proposal, from a named and dated source, with a note on how the platform's design differs. Where no comparable estimate exists, the figure is the platform's own arithmetic from cited data and is labeled as such.

> **Comparable estimate, not an official score.** The platform design differs from the published proposal used as a proxy.

All figures are ten-year totals in billions of dollars, in the budget window stated by each source, except Social Security, which is measured over 75 years. Ranges show the spread between sources or scenarios. The underlying data are maintained in `data/revenue-estimates.csv` and `data/costing.csv`.

**Basis**

- **Comparable estimate (not a score):** a published estimate of a similar proposal.
- **Platform arithmetic built from published estimates:** a figure combined or adjusted from published estimates, as explained in its row.
- **Platform arithmetic:** a calculation from cited data where no comparable estimate exists.
- **Pending:** not yet estimated.

**Confidence**

- **High:** the source estimates nearly the same policy against current law.
- **Moderate:** the source estimates a similar policy with material differences in design, timing, or baseline.
- **Low to moderate:** the estimate is outdated or likely to overstate revenue.

**Estimate type**

- **Conventional:** assumes no change in the size of the economy, though it may include changes in taxpayer behavior.
- **Dynamic:** also includes effects on the size of the economy.
- **Model defaults (not stated):** the source does not say which assumptions it used.

**Status**

- **Estimated:** a comparable estimate or platform arithmetic is available (used for revenue rows).
- **Funded under current estimates:** the assigned revenue covers the cost.
- **Partially funded under current estimates:** the assigned revenue covers part of the cost.
- **Awaiting additional revenue:** the program waits under Section 27.9 until revenue grows.
- **Not yet estimable:** no reliable estimate exists yet.

## Chapter 27 Compliance Note

The purpose of this appendix is not to prove that every proposal can be implemented at once. Its purpose is to apply Chapter 27's financing rules honestly and transparently. Programs that exceed available revenue remain in the phase-in queue until sufficient revenue exists. Tax rates do not rise automatically to close a gap (Section 2.11).

## E.1 Revenue

### E.1.1 Federal Tax Fairness Measures (General Fund)

| Measure | Section | Ten-year estimate ($B) | Estimate type | Basis | Confidence | Source | Date and window | Design differences | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Restored 39.6% top rate | 2.6 | 459 to 465 | Model defaults (not stated) | Comparable estimate (not a score) | High | Congressional Research Service, using the Budget Lab at Yale and PSL models | July 2026; FY2026–2035 (Yale), CY2026–2035 (PSL) | Same rate and threshold as the platform, against current law after P.L. 119-21 | Estimated |
| Capital gains and dividends at ordinary rates above $1 million, with gains taxed at death | 2.7.1, 2.7.3 | 183 to 289 | Conventional; dynamic at the low end | Comparable estimate (not a score) | Moderate | U.S. Treasury; Tax Foundation | March 2024; FY2025–2034 | Published estimates combine both measures. Source used a 44.6% top rate on gains (platform: 43.4%), a retroactive start, and a baseline before P.L. 119-21, so the platform likely raises less | Estimated |
| Carried interest as ordinary income | 2.7.2 | 7 to 13 | Conventional | Comparable estimate (not a score) | High | U.S. Treasury; CBO | March and December 2024; FY2025–2034 | CBO's higher figure also applies self-employment tax, which the platform does not | Estimated |
| Corporate minimum tax at 21% | 2.9 | Up to 137 | Conventional | Comparable estimate (upper bound) | Low to moderate | U.S. Treasury | March 2024; FY2025–2034 | Published estimate predates subsequent statutory exemptions and administrative actions that may materially reduce revenue. No current estimate exists | Estimated |
| Estate and gift tax reform | 2.10 | 212 to 309 | Conventional | Platform arithmetic built from published estimates | Moderate | JCT and CBO; U.S. Treasury | July 2025 and March 2024; FY2025–2034 | Low end reverses the 2025 exemption increase (to about $7 million; the platform's $5 million raises more). High end adds Treasury's avoidance closures. Interacts with Section 2.7.3 | Estimated |
| Pass-through deduction phased out above the top bracket | 2.6.1 | 250 to 420 | Dynamic (low); conventional (high) | Platform arithmetic built from published estimates | Low | Tax Foundation | 2025; 2027–2036 | About half of the estimate for full repeal, since the platform removes the deduction only above the top-bracket threshold. The share is an assumption | Estimated |
| High-end enforcement division, net of its funding | 2.4 | 120 to 200 | Conventional | Comparable estimate (not a score) | Moderate | CBO, via the Budget Lab at Yale | 2021–2022; ten years | CBO found about \$80 billion in spending returns about \$204 billion, \$124 billion net. The high end allows for deterrence, which CBO excludes | Estimated |
| Surtax on investment income above \$1 million | 2.7.5 | 250 to 700 | Conventional | Platform arithmetic built from published estimates | Low | Budget Lab at Yale; Tax Policy Center | May 2025; April 2026; ten years | Published estimates for a surtax on all income run from \$635 billion to \$1.5 trillion. The platform excludes wages, and the 53.4% top gains rate is above the revenue-maximizing level, so the range is set low | Estimated |

Because these estimates come from different models, baselines, and policy packages, they should not be interpreted as a formal revenue score. The aggregate range is illustrative and may overstate or understate actual combined revenue.

| | Ten-year range ($B) |
| --- | --- |
| **Illustrative aggregate range (not additive)** | **About 1,480 to 2,530** |

The affordability test in Section E.3 uses this range only to show how far revenue reaches down the phase-in order. Its purpose is to show that the platform's financing rules prevent promises from exceeding available revenue, not to claim a precise total.

### E.1.2 Dedicated Streams

| Stream | Section | Single use | Ten-year estimate | Estimate type | Basis | Source | Date and window | Design differences | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Extreme Wealth Fair-Share Tax | 2.1 | Sovereign Wealth Reserve; then a smoothed transfer to the General Fund for tiers 3 and 4 only | 2,100 to 6,200 gross; about 500 to 2,200 transferred | Conventional | Comparable estimate (not a score) | Penn Wharton Budget Model; Saez and Zucman | March 2021 (FY2022–2031); March 2026 (2026–2035) | Same design as the platform. The low estimate uses older wealth data. Transfer figures are illustrative: they assume a Reserve target of about \$1 trillion and the rule in Section 27.5 | Estimated |
| Universal Health Insurance contributions | 5.1.2 | UHI Trust Fund | Rates not yet set; must raise about 32,600 to 34,000 (Section E.4) | — | Required amount, not an estimate | Mercatus Center; Urban Institute | 2018–2019; ten years | Gross of the premiums, out-of-pocket costs, and state spending the contributions replace | Not yet estimable |
| Consolidated health financing savings | 27.3 | UHI Trust Fund | Pending | — | Pending | — | — | — | Not yet estimable |
| State compact contributions | 4.7.3 | UHI Trust Fund | Pending | — | Pending | — | — | — | Not yet estimable |
| Drug-price negotiation savings | 5.2.1 | Innovation Fund (capped share); remainder counted in UHI | Pending | — | Pending | — | — | — | Not yet estimable |
| Paid leave contribution | 3.3 | Paid Leave Trust Fund | Set by actuaries to equal cost: about 0.5% to 2.9% of taxable payroll (about 600 to 3,900) | Conventional | Comparable estimate (not a score) | Institute for Women's Policy Research; American Action Forum | 2017–2019 | See Section E.4 | Estimated (rate range) |
| Social Security payroll reforms (75-year basis) | 26.2, 26.3 | Social Security trust funds | About 2.55% of taxable payroll over 75 years (Section 26.2.1 only) | 75-year actuarial | Comparable estimate (not a score) | SSA Office of the Chief Actuary | September 2025; 2025 Trustees Report basis | Score of option E2.1: all earnings taxed at 12.4%, no added benefit credit, the platform's design. Section 26.3 not yet scored | Estimated |
| Carbon and methane fees | 20.2 | 80% dividend, 10% Transition Fund, 10% one-time costs | Pending | — | Pending | — | — | — | Not yet estimable |

## E.2 Program Costs

### E.2.1 General Fund Programs in Phase-In Order

| Program | Section | Tier, step | Ten-year estimate | Estimate type | Basis | Source | Date and window | Design differences | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SSI asset and income rules | 4.6 | 1, step 1 | 69 to 80 | Conventional | Platform arithmetic built from published estimates | Social Security Administration actuaries | August 2026 (assets, CY2025–2034); July 2021 (income exclusions, 2021–2030) | Asset limit estimate matches the platform. Income exclusion estimate used $128 and $416 a month, close to the platform's restored values. High end adjusts for the later window | Funded under current estimates |
| SNAP changes, including reversal of the 2025 cuts | 4.5 | 1, step 1 | About 187 (understated) | Conventional | Comparable estimate (not a score) | CBO, via Congressional Research Service | August 2025; FY2025–2034 | Reversal valued at CBO's estimate of the 2025 cuts. Excludes the platform's broader exemptions, and actual 2026 cuts exceeded CBO's projection | Funded under current estimates |
| EITC for workers without children | 4.3 | 1, step 2 | 135 to 140 | Conventional | Comparable estimate (not a score) | Joint Committee on Taxation; Tax Policy Center | December 2021 (FY2022–2031); 2025 (2025–2034) | Same design as the platform: the 2021 expansion made permanent | Funded under current estimates |
| Child Tax Credit: full refundability | 4.2.1 | 1, step 3 | 272 to 335 | Conventional (low); dynamic (high) | Comparable estimate (not a score) | Tax Foundation | 2026; 2027–2036 | Same design as the platform: the $2,200 credit with no earnings requirement | Funded under current estimates |
| Child Tax Credit: young child supplement | 4.2.2 | 1, step 4 | 155 to 180 | Conventional | Platform arithmetic built from published estimates | Concord Coalition | About 2021; ten years | $1,000 per child under 6, scaled from a published estimate for a $1,000 credit for all children. Low confidence | Funded under current estimates |
| Training and triggered apprenticeships (capped) | 3.6.7 to 3.6.9 | 1, step 5 | About 55 | Statutory cap | Set by statute | Section 3.6.9 | \$5 billion a year, indexed; ten years | For scale, FY2026 federal funding is about \$1.1 billion for dislocated-worker grants and \$0.3 billion for apprenticeship grants | Funded under current estimates |
| Expanded Disabled Access Credit | 13.5.1 | 1, step 5 | 1 to 10 | Conventional | Platform arithmetic | — | Ten years | Limit on eligible spending doubles to \$20,500 (credit up to \$10,000), matching a 2018 bill, and digital work qualifies. Very low confidence; immaterial to the test | Funded under current estimates |
| Housing vouchers for people experiencing or at risk of homelessness | 8.3.3 | 2, step 1 | 96 to 190 | Conventional | Platform arithmetic built from published estimates | National Alliance to End Homelessness | March 2025; one year, multiplied by ten | Low end: $9.6 billion a year to house every household in shelter. High end roughly doubles it for unsheltered households and those at imminent risk, which the source excludes. Low confidence | Funded under current estimates |
| Emergency rental assistance and right to counsel | 8.3.6 | 2, step 2 | 71 to 78 | Conventional | Platform arithmetic built from published estimates | Legal Services Corporation; Ellen and O'Regan | About 2021; 2020; annual figures, multiplied over ten years | Counsel: $3.3 to $4.1 billion a year for all eviction cases, phased in over five years. Rental assistance: about $4.5 billion a year base program. Excludes the capped recession increase | Funded under current estimates |
| Universal preschool for 4-year-olds | 7.1 | 2, step 3 | 100 to 170 | Conventional | Platform arithmetic built from published estimates | CRFB | December 2021; FY2022–2031 | Built from the 2021 Build Back Better pre-K plan made permanent, halved for 4-year-olds only. High end adds children in states CBO assumed would not take part. Older window likely understates. Low confidence | Funded under current estimates, if the training cap is 120 or less |
| Childcare cost caps | 3.4 | 2, step 4 | 460 to 700 | Conventional | Platform arithmetic built from published estimates | CRFB; CBO | December 2021 and January 2022; FY2022–2031 | Built from the 2021 Build Back Better childcare plan made permanent. High end adds children in states CBO assumed would not take part. Older window likely understates. Low confidence | Partially funded under current estimates |
| K-12 equity funding | 7.2.1 | 3, step 1 | 360 to 400 | Conventional | Platform arithmetic built from published estimates | Education Week | April 2023; annual figure, multiplied by ten | Reference design only: tripling Title I. Section 7.2.1 sets no dollar amount, and full equivalence with wealthier districts could cost more. Low confidence | Funded under current estimates |
| Tuition-free public higher education | 7.3 | 3, step 2 | 700 to 800 | Conventional | Comparable estimate (not a score) | CRFB; Georgetown Center on Education and the Workforce | 2019 (ten years); October 2020 (eleven years) | Low end assumes the federal government pays 67% and states the rest; high end is the full cost of universal tuition-free public college. The platform has not set a federal-state split. Medium-low confidence | Partially funded under current estimates |
| Existing student-loan reform | 7.3.1 | 3, step 3 | 400 to 900 | Conventional (federal credit accounting) | Platform arithmetic built from published estimates | CBO; CRFB | 2023; 2022; lifetime cost recorded up front | Between CBO's \$230 to \$276 billion for the 2023 repayment plan, which the platform goes well beyond, and CRFB's \$1.6 trillion for cancelling all federal student debt. Very low confidence | Partially funded under current estimates |
| Universal housing vouchers | 8.3.3 | 4 | 300 to 750 | Conventional | Platform arithmetic built from published estimates | Bipartisan Policy Center (Abt Associates); Urban Institute | 2013 analysis; 2024 dollars; annual figures, multiplied by ten | Low end: about \$30 billion a year for unassisted, cost-burdened extremely low-income renters. High end covers a broader group than the platform's. Overlaps tier 2, step 1. Low confidence | Partially funded under current estimates |

### E.2.2 Fixed-Budget Programs

Under Section 27.9 these continue at current-law levels. Only their expansions are listed, and expansions begin only after tier 1 is fully funded.

| Program | Section | Expansion ceiling | Basis | Source | Date and window | Status |
| --- | --- | --- | --- | --- | --- | --- |
| Research expansion | 18.2 | Pending | Pending | — | — | Not yet estimable |
| National service | 25.2 | Pending | Pending | — | — | Not yet estimable |
| Farm Risk Protection enhancements | 10.1.8 | Pending | Pending | — | — | Not yet estimable |
| Public housing developer operations | 8.1.4 | Pending | Pending | — | — | Not yet estimable |
| State rent stabilization grants | 8.2.6 | Pending | Pending | — | — | Not yet estimable |

### E.2.3 Programs With Their Own Funding

| Program | Section | Funded by | Ten-year estimate | Estimate type | Basis | Source | Date and window | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Universal Health Insurance, including rural stabilization, the Medicaid transition, and the long-term care benefit with eldercare (decision 0036) | 5.1, 5.3, 4.7 | UHI Trust Fund | About 32,600 to 34,000 in added federal spending | Conventional | Comparable estimate (not a score) | Mercatus Center; Urban Institute; CBO (single year) | 2018–2020; ten years | Estimated |
| Paid leave | 3.3 | Paid Leave Trust Fund | About 600 to 3,900 (0.5% to 2.9% of taxable payroll) | Conventional | Comparable estimate (not a score) | IWPR; American Action Forum | 2017–2019 | Estimated |
| Social Security reforms (75-year basis) | Chapter 26 | Social Security trust funds | Revenue reform only; benefits unchanged | 75-year actuarial | Comparable estimate (not a score) | SSA Office of the Chief Actuary; 2026 Trustees Report | 2025–2026 | Estimated |
| Dynamic Global Innovation Fund | 5.2.2 | Drug-negotiation savings (capped) | Pending | — | Pending | — | — | Not yet estimable |

## E.3 Affordability Test

> **Current estimate outcome (all General Fund programs estimated):**
>
> - [ ] Funds tier 1 only, or part of it
> - [x] Funds tier 1 and part of tier 2, plus K-12 equity from the wealth-tax transfer: **conservative case**
> - [ ] Funds tiers 1 and 2
> - [ ] Funds through tier 3
> - [x] Funds all General Fund tiers: **favorable case**
>
> Under conservative assumptions, all of tier 1 is funded, including the \$5 billion-a-year training cap and the Disabled Access Credit, and so are tier 2 steps 1 to 3: homelessness vouchers, eviction prevention, and universal preschool. Childcare caps wait. Under the wealth-tax exception in Section 27.9, the smoothed transfer then pays for K-12 equity funding (tier 3, step 1); tuition-free college waits. Under favorable assumptions every tier is funded, with tiers 3 and 4 paid from stable revenue left after tier 2 together with the wealth-tax transfer. Eldercare is no longer a General Fund program; it is costed with Universal Health Insurance (decision 0036).
>
> **The gap.** Costs for all four tiers are about \$3.4 to \$5.0 trillion over ten years. Stable revenue (\$1.5 to \$2.5 trillion) plus the wealth-tax transfer (\$0.5 to \$2.2 trillion) gives about \$2.0 to \$4.7 trillion. The conservative case is about \$3 trillion short, mostly childcare caps, tuition-free college, student-loan reform, and universal vouchers. The favorable case funds every tier with about \$1.4 trillion to spare.

This table applies the order in Section 27.9 to the General Fund revenue in Section E.1.1. Stable General Fund revenue pays for every tier. The wealth-tax transfer is shown separately because it may pay only for tiers 3 and 4; it is illustrative and assumes a Reserve target of about \$1 trillion. A step takes effect only when the revenue remaining after every earlier step covers its full cost; a step that cannot be fully covered waits, and is never partly funded. The **conservative case** pairs the low revenue estimate with the high cost estimates; the **favorable case** pairs the high revenue estimate with the low cost estimates.

| Step | Cost ($B) | Conservative: remaining after | Favorable: remaining after | Status |
| --- | --- | --- | --- | --- |
| **General Fund revenue (E.1.1, illustrative)** | — | 1,480 | 2,530 | — |
| Tier 1, step 1: SSI and SNAP | 256 to 267 | 1,213 | 2,274 | Funded under current estimates |
| Tier 1, step 2: EITC for workers without children | 135 to 140 | 1,073 | 2,139 | Funded under current estimates |
| Tier 1, step 3: Child Tax Credit full refundability | 272 to 335 | 738 | 1,867 | Funded under current estimates |
| Tier 1, step 4: Child Tax Credit young child supplement | 155 to 180 | 558 | 1,712 | Funded under current estimates |
| Tier 1, step 5: training and apprenticeships, with the Disabled Access Credit | 56 to 65 | 493 | 1,656 | Funded under current estimates |
| Tier 2, step 1: homelessness vouchers | 96 to 190 | 303 | 1,560 | Funded under current estimates |
| Tier 2, step 2: eviction prevention | 71 to 78 | 225 | 1,489 | Funded under current estimates |
| Tier 2, step 3: universal preschool for 4-year-olds | 100 to 170 | 55 | 1,389 | Funded under current estimates |
| Tier 2, step 4: childcare cost caps | 460 to 700 | Waits (55 available, 700 needed) | 929 | Partially funded under current estimates |
| **Smoothed wealth-tax transfer (Section 27.5), tiers 3 and 4 only** | — | About 500 | About 2,200; with stable revenue left after tier 2, about 3,129 is available for tiers 3 and 4 | — |
| Tier 3, step 1: K-12 equity funding | 360 to 400 | 100 left of the transfer, under the wealth-tax exception in Section 27.9 | 2,769 | Funded under current estimates |
| Tier 3, step 2: tuition-free public higher education | 700 to 800 | Waits (100 available, 800 needed) | 2,069 | Partially funded under current estimates |
| Tier 3, step 3: student-loan reform | 400 to 900 | Waits | 1,669 | Partially funded under current estimates |
| Tier 4: universal housing vouchers | 300 to 750 | Waits | 1,369 | Partially funded under current estimates |
| Fixed-budget expansions (after tier 1) | Pending | Pending | Pending | Not yet estimable |

## E.4 Trust Fund Balance Tests

Social Security is evaluated on a 75-year actuarial basis rather than a ten-year budget window.

**Balance status:** positive balance, near balance, deficit, or not yet demonstrable.

| Trust fund | Basis period | Revenue | Cost | Balance | Balance status |
| --- | --- | --- | --- | --- | --- |
| Universal Health Insurance | 10 years | Contribution rates not yet set | About \$32.6 to \$34.0 trillion in added federal spending | Revenue must be set to match | Not yet demonstrable |
| Paid Leave | 10 years | Set by actuaries to equal cost | About 0.5% to 2.9% of taxable payroll | Balanced by design | Near balance (by statute) |
| Social Security | 75 years | +2.55% of taxable payroll (Section 26.2.1) | Current deficit 4.42% of taxable payroll | About −1.9% of taxable payroll | Deficit |

**Universal Health Insurance.** Comparable single-payer designs that cover long-term care add about \$32.6 trillion (Mercatus Center) to \$34 trillion (Urban Institute) to federal spending over ten years. Much of that replaces what employers, households, and states now pay in premiums, deductibles, and Medicaid shares; CBO's 2020 options found national health spending changing by between \$0.7 trillion less and \$0.3 trillion more in 2030. The Trust Fund must still raise roughly \$3 trillion or more a year through contributions set in law. Its share on top-bracket wages is limited to 4.2 percent by the 60 percent wage ceiling (Section 2.8), and wealth-tax revenue is barred (Section 5.1.2), so most of it must come from payroll and income-based contributions below the top bracket and from employers and states. A shortfall slows the phase-in; it never draws on the General Fund.

**Paid Leave.** The rate is set by actuaries to keep the fund solvent, so it balances by design. The open question is the rate: about 0.47 percent of taxable payroll in the Institute for Women's Policy Research's model of a 12-week benefit at two-thirds of pay, and up to about 2.9 percent in American Action Forum estimates that assume much more leave-taking once leave is paid. Section 3.3 does not yet set the replacement rate or a weekly maximum.

**Social Security.** The 2026 Trustees Report puts the 75-year deficit at 4.42 percent of taxable payroll. The Chief Actuary's score of the platform's design for Section 26.2.1, applying 12.4 percent to all earnings with no added benefit credit, improves the balance by about 2.55 percent (scored on the 2025 report's assumptions), closing roughly 58 percent of the current gap. Section 26.3 adds some revenue but has not been scored. About 1.9 percent of taxable payroll remains, so no money would reach the Social Security Endowment (Section 26.4) under current estimates.

## E.5 Honest Limits

- **These are comparisons, not scores.** Every figure comes from a proposal that differs from the platform's in thresholds, timing, or design, and each difference is noted in its row.
- **Sources use different budget windows, baselines, and estimate types,** so totals that combine them are approximate and not additive.
- **Behavioral responses are uncertain,** especially for taxes on capital gains and high incomes, where taxpayers can change the timing of income.
- **"Awaiting additional revenue" describes today's estimates, not a final verdict.** A step that waits takes effect when revenue grows or earlier costs come in lower. Statuses in the tables are only as good as the estimates behind them; several tier 2 figures rest on low-confidence platform arithmetic.
- **Wealth-tax revenue is the least certain figure.** Published estimates for the same design differ threefold, and a court ruling could end it. The tier rules keep tiers 1 and 2 from depending on it.
- **Ten-year totals hide timing.** The wealth-tax transfer begins only once the Reserve reaches its target, which takes several years in the conservative case. K-12 equity funding would therefore start late in the window, and its ten-year cost is compared with a transfer that arrives mostly in later years.
- **Nothing here replaces the independent costing required by Section 27.10** before any program takes effect.
