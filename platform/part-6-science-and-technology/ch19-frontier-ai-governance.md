## Chapter 19: Frontier AI Governance

*Aligned with the white paper* Frontier AI Governance: A Framework for Innovation, Accountability, and Public Safety *(decisions 0001, 0013).*

### 19.1 Guiding Principle

Artificial intelligence possesses enormous potential to improve human welfare.

It also introduces novel risks.

Public policy should encourage beneficial innovation while establishing safeguards against catastrophic misuse. Oversight shall rise with the risk a system has been shown to pose: light where risk is low, rigorous where capabilities could cause severe or irreversible harm.

### 19.2 Frontier AI Safety & Containment Act \[Statute – High Resistance\]

Frontier AI Systems shall be subject to oversight that scales with demonstrated capability.

#### 19.2.1 Hybrid Trigger: Compute Screens, Capability Decides

A model trained with more than a statutory threshold of training compute shall be evaluated under the Algorithmic Capability Index (Section 19.3). The compute threshold is a screening trigger only. The tier a system reaches on the Index determines the level of review, testing, auditing, and accountability that applies. Capability evaluations may also bring smaller or heavily scaffolded models into scope when they show dangerous capabilities below the compute threshold.

#### 19.2.2 Verified Containment

Potentially dangerous capabilities shall be evaluated only in isolated environments that meet a verified standard:

- Network access denied by default, with every exception documented, justified, and monitored
- Production systems and credentials kept out of the environment's reach
- Real-time monitoring and automated shutdown if the system attempts to breach the environment
- Independent testing and certification of the containment environment before each use

#### 19.2.3 Model-Weight Security

Developers of systems at elevated Index tiers shall protect model weights against theft and unauthorized access under auditable cybersecurity standards.

#### 19.2.4 Incident Reporting

Developers shall report significant incidents involving unexpected autonomy, containment failures, security breaches, or other major safety concerns to the oversight agency within 15 days of discovery, or within 24 hours when an incident presents an imminent risk of serious harm. Affected third parties shall be notified promptly. Developers shall maintain continuous monitoring capable of detecting intrusions rapidly.

Timely, good-faith reports shall receive conditional safe-harbor protection from enhanced administrative penalties, modeled on NASA's Aviation Safety Reporting System. The purpose of reporting is systemic learning rather than immediate punishment.

#### 19.2.5 Emergency Suspension

High-capability systems hosted by their developer shall include technical mechanisms capable of suspending operation immediately in an emergency, such as a severe safety failure, security breach, or unexpected autonomous behavior. Both the developer and the oversight agency, by formal administrative order, shall be able to trigger suspension.

Suspension cannot recall open-weight models once their parameters are publicly released. This section therefore governs hosted systems; release rules for open-weight models at higher Index tiers are addressed in Section 19.8.

#### 19.2.6 Whistleblower Protections

Employees and contractors who report safety failures or containment breaches in good faith shall be protected from retaliation, and large developers shall maintain anonymous internal reporting channels.

### 19.3 Algorithmic Capability Index (ACI) \[Statute – High Resistance\]

The Index is a tiered rating, not a single aggregate score. Independent evaluators shall assess a system in each category below and assign a tier (for example, Tier 1 through Tier 4). A system's overall rating is the highest tier it reaches in any single category.

| Category | Test question |
| --- | --- |
| Autonomous Cyber Operations | Can the model independently conduct offensive or defensive cybersecurity tasks? |
| Self-Replication Attempts | Can the system copy itself, modify its deployment environment, or evade controls? |
| Financial Autonomy | Can the system independently manage significant financial resources? |
| Real-World Task Delegation | Can the model coordinate multi-stage objectives involving software, people, or physical infrastructure? |
| Strategic Planning | Can the system pursue long-term goals across extended time horizons? |
| Autonomous Tool Use | Can the system independently acquire and use external tools? |
| Biological and Chemical Uplift | Does the system meaningfully help someone develop biological or chemical weapons? |

These categories are illustrative rather than exhaustive. Evaluations shall use standardized protocols with held-out tasks, best-effort elicitation of capability, and checks for systems that change their behavior when they detect testing. Methods shall be published in enough detail to allow replication, while withholding details that would make tests easy to game or disclose hazardous techniques.

#### 19.3.1 Rolling Review Process

The oversight agency shall publish tier definitions and thresholds, and shall review the compute threshold and tier definitions at least annually. A static regulatory framework cannot effectively govern a rapidly evolving field.

### 19.4 Independent Evaluation & Stochastic Audit Rule \[Statute\]

- **Before deployment:** systems at elevated Index tiers shall undergo independent third-party review covering security testing, behavioral analysis, capability verification, and systemic risk assessment.
- **After deployment:** regulators may conduct randomized, unannounced audits of deployed systems to detect hidden dangerous behavior, drift from pre-deployment testing, weakened safety controls, and failures to report incidents.
- **Continuously:** independent red-team testing shall catch vulnerabilities introduced through fine-tuning or system updates.

### 19.5 Developer Accountability for Harm \[Statute – High Resistance\]

Developers shall bear legal responsibility for measurable harms caused by a system's autonomous operation outside the safety boundaries documented in the developer's published safety framework and reviewed by independent evaluators. Tying responsibility to a published, reviewed framework prevents developers from redefining acceptable risk after an incident.

This is not strict liability for every unforeseen outcome. Liability shall follow a reasonableness standard weighing foreseeability, the safety measures implemented, regulatory compliance, documented safety practices, and the findings of independent evaluators. Compliance with federal safety rules may serve as mitigating evidence but shall not grant blanket immunity. Rules on proximate causation and deliberate misuse by downstream users shall be set in implementing legislation. The law should penalize negligence, not responsible scientific experimentation.

### 19.6 Oversight Agency, Enforcement & Federal Standards \[Statute\]

Oversight shall be housed in the Department of Commerce through the National Institute of Standards and Technology. The agency shall have dedicated technical staff, subpoena authority to investigate incidents, secure compute infrastructure to verify held-out evaluations, and civil penalties scaled to developer size, enforceable in federal court. Thresholds, reporting deadlines, and duties shall be fixed in statute, and independent third-party evaluators shall conduct testing, so that oversight does not depend on the discretion of officials who can be removed at will.

Obligations shall scale with Index tier and organizational capacity. Developers below the compute and capability triggers shall face only basic transparency duties and may use federally supported shared evaluation resources. Large frontier developers shall carry the full set of auditing, security, and reporting duties.

Federal law shall set a minimum standard. States may adopt additional safeguards, except that a single national incident-reporting standard shall preempt conflicting state reporting requirements. Rules for automated decision systems used in employment are set in Section 3.6, which likewise sets a minimum and does not preempt stronger state laws.

### 19.7 Human Control Principle

Artificial intelligence should augment human decision-making, not replace democratic accountability or human responsibility.

Humans must remain ultimately responsible for consequential decisions affecting:

- Rights
- Liberty
- Safety
- Governance
- Critical infrastructure operations

### 19.8 Innovation, International Cooperation & Honest Limit

Federal policy shall sustain public investment in basic AI research, national laboratories, advanced compute infrastructure, STEM education, startups, and commercialization (Chapter 18). The United States shall pursue cooperation with allied nations on technical safety standards, cross-border incident reporting, joint safety research, and standardized evaluation protocols.

**Honest limit:** the federal role in AI regulation is contested, including through executive action seeking to override state AI laws, and only Congress can clearly preempt state law. The release of open-weight models at higher Index tiers raises unresolved questions: weights cannot be recalled, and rules must protect open academic research and competition. Both are listed as open questions in the white paper. Capability evaluation (Section 19.3) is a young science: systems may behave differently when they detect testing, and tier thresholds will be disputed. How courts apply the reasonableness standard for developer liability (Section 19.5) will take years of cases to settle.

Cross-reference: See Chapter 18 regarding scientific research and technological development.
