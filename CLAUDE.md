# CLAUDE.md

Working rules for Claude Code in the Social Democratic Market Platform repository.

## 1. Role

You are the local execution agent. Gregory (the repo owner) makes all policy decisions. A separate Claude chat session drafts policy, runs audits, and sends you prompts. You make the edits, run the checks, and commit.

Never decide an open policy question. If a prompt leaves a policy choice open, or carrying it out would change what the platform proposes, stop and ask.

## 2. Sources of truth

- The Markdown in `platform/` and `white-papers/` is the master source (decision 0018). `platform/build-order.txt` sets the chapter order.
- PDFs in `docs/` are generated, so never edit them by hand. `bash build/build.sh VERSION` turns the Markdown into DOCX with pandoc (styled by `build/reference*.docx`), then into PDF with LibreOffice (`build/docx2pdf.py`). Output goes to `build/out/`, which git ignores. The "Build editions" workflow (`.github/workflows/build.yml`) runs the build when a `v*` tag is pushed and attaches the files to the release.
- Where the platform and a white paper conflict, the white paper governs (decision 0001). Change the platform to match the paper.

## 3. Platform integrity guardrails

- **Single-use revenue.** Never count a revenue stream twice. Chapter 27 sets each stream's use (Sections 27.3, 27.4, and 27.8). Streams are listed in `data/revenue-streams.yml`.
- **Phase-in order is stated only in Section 27.9.** Other chapters point to it and never restate tier or step numbers.
- **Prefer self-enforcing law:** express private rights of action, enforcement by state attorneys general, mandatory statutory duties, and bans on pre-dispute arbitration.
- **Honest Limits.** Every substantive chapter and appendix keeps an Honest Limits section stating unscored
  assumptions, legal risks, and behavioral trade-offs. Appendix D (section map) is exempt.
  Any new or substantially revised chapter must include the section.

## 4. Records

- Policy choices go in `decisions/NNNN-slug.md`, numbered after the highest existing ID, using the existing frontmatter:

  ```yaml
  ---
  id: "0042"
  title: "Short title"
  status: accepted
  date: YYYY-MM-DD
  affects: [ch26, appendix-e, white-paper-social-security]
  ---
  ```

  Recent records use the sections Question, Decision, Why, and Trade-off, plus Supersedes, Credit, or Sources where they apply. Add every new record to the index table in `decisions/README.md`.
- Every change gets an entry under `## Unreleased` in `CHANGELOG.md`: a `###` heading (with the decision number, if any) and bullets saying what changed and where.

## 5. Validators

Run these before any commit. On Windows, run them from the repo root in PowerShell (Python is `py`):

```powershell
@'
import csv, glob, re
heads, refs = set(), {}
for f in glob.glob("platform/**/*.md", recursive=True):
    heads |= set(re.findall(r"^#+\s+(\d+(?:\.\d+)+)\b", open(f, encoding="utf-8").read(), re.M))
for f in glob.glob("platform/**/*.md", recursive=True) + glob.glob("white-papers/**/*.md", recursive=True):
    t = open(f, encoding="utf-8").read()
    for m in re.finditer(r"Sections?\s+((?:\d+(?:\.\d+)+)(?:(?:,\s*|,?\s+(?:and|to)\s+)\d+(?:\.\d+)+)*)", t):
        for r in re.findall(r"\d+(?:\.\d+)+", m.group(1)):
            refs.setdefault(r, f)
for r in sorted(set(refs) - heads):
    print("MISSING", r, "in", refs[r])
for path, n in [("data/costing.csv", 20), ("data/revenue-estimates.csv", 15)]:
    with open(path, encoding="utf-8", newline="") as fh:
        for i, row in enumerate(csv.reader(fh), 1):
            if len(row) != n:
                print(f"{path}:{i}: {len(row)} columns, expected {n}")
for path in ["platform/appendices/appendix-e-costing.md", "REVIEW.md"]:
    expect = None
    for i, line in enumerate(open(path, encoding="utf-8").read().splitlines(), 1):
        if line.lstrip().startswith("|"):
            c = line.replace("\\|", "").strip().strip("|").count("|") + 1
            expect = expect or c
            if c != expect:
                print(f"{path}:{i}: {c} columns, table has {expect}")
        else:
            expect = None
print("done")
'@ | py -
```

The expected output is exactly:

```
MISSING 3.2.4 in platform\appendices\appendix-d-section-map.md
done
```

3.2.4 is a v1.0 section number in the Appendix D section map, so it is expected. Any other line is an error. The script checks that:

- every "Section N.N" (and "Sections N.N, N.N and N.N") cited in `platform/` or `white-papers/` exists as a numbered heading in `platform/`;
- every row of `data/costing.csv` has 20 columns and every row of `data/revenue-estimates.csv` has 15;
- every Markdown table in `platform/appendices/appendix-e-costing.md` and `REVIEW.md` has the same column count in each row.

For each changed white paper, also check that it converts with pandoc without errors:

```powershell
New-Item -ItemType Directory -Force build/out | Out-Null
pandoc white-papers/social-security/paper.md --reference-doc=build/reference.docx -o build/out/check.docx
```

(Substitute the paper's folder: `social-security`, `universal-health-insurance`, or `frontier-ai-governance`.) Pandoc is not currently installed on Gregory's Windows machine. If it is missing, say so rather than skipping the check silently.

## 6. Reviewers

- Never put reviewers' email addresses or phone numbers in the repo, in any file, commit message, or pull request.
- Private reviewer correspondence may be summarized and attributed only with the reviewer's permission. Record it in Appendix E.6 (Reviewer Comments) in `platform/appendices/appendix-e-costing.md`. Without permission, make the point without naming the reviewer.

## 7. Git workflow

- Work on `main`. Run `git pull` before starting.
- Before committing, show `git status` and `git diff --stat`, then wait for Gregory's confirmation.
- After confirmation, commit with a descriptive message and push to `main`.
- Never push a tag or create a release without explicit confirmation. A tag push runs "Build editions" and publishes PDFs.
