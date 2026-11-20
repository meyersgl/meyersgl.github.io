---
name: release
description: Release a new edition of the Social Democratic Market Platform (version bump, changelog, tag, Build editions, PDFs into docs/, live link check). Use when Gregory asks to release, publish, or cut an edition, e.g. "release v1.3.3 Correction".
---

# Release an edition

Arguments: the version (e.g. `1.3.3`) and the edition name (e.g. `Correction`, `Review Update`). Optional: the release date and the edition history text. If the version or name is missing, ask. If no date is given, use today.

This skill has three stops. Never skip one, and never treat an earlier yes as covering a later stop. Follow every rule in `CLAUDE.md`, especially sections 1 (never decide policy), 5 (validators), and 7 (git workflow).

## Shell rules (Windows, PowerShell 5.1)

- Use the PowerShell tool. The Bash tool on this machine can fail to fork.
- Write every commit message to a file in the scratchpad and run `git commit -F <file>`. PowerShell 5.1 breaks `-m` messages that contain double quotes.
- Stage files by name, never `git add -A`.
- End every commit message with the attribution line from the session's system reminder.

## Part 1: prepare

1. `git pull` on `main`. The working tree must be clean except for anything Gregory asked to include.
2. Read `## Unreleased` in `CHANGELOG.md`. If it is empty, stop and ask what the release contains.
3. Find the previous release commit and use it as the template:
   ```powershell
   git log --oneline --grep "^Release v" -n 1
   git show <commit> -- . ":(exclude)CHANGELOG.md"
   ```
   Change the edition from the previous version to the new one in exactly the places that commit changed it. Edition labels only; never change section numbers, figures, or the edition history entries of earlier versions.

   The usual places:

   | File | What changes |
   | --- | --- |
   | `platform/00-front-matter/00-title-and-authors-note.md` | Title line (`Version X — Costed Edition, <Name>`), `Public Release Version X`, new edition history entry |
   | `summaries/executive-summary.md` | `subtitle:` |
   | `summaries/one-pager.md` | Footer version |
   | `white-papers/*/paper.md` (all three) | `published_pdf:` and `White Paper Version`; Frontier AI reference [6] (Full Platform version) |
   | `CITATION.cff` | `version:` and `date-released:` |
   | `README.md` | Current edition line and the list of earlier editions |
   | `REVIEW.md` | Line 3 version |
   | `index.html` | PDF links and labels, document status note (current and earlier editions), `Current edition:`, new edition list entry |

   Make the replacements with a small Python script that checks each old string appears the expected number of times and aborts before writing if any count is wrong.

4. Edition history entries go above the previous version's entry, matching its format exactly:
   - Title page: `Version X \| Month YYYY`, a blank line, then `<Name>. <what changed>.`
   - `index.html`: an `<li>` with `<strong>vX <Name> · Month YYYY:</strong>`, a one or two sentence description, and the changelog link line.

   If Gregory did not supply the text, draft it from the Unreleased entries and mark it as a draft at Stop 1. This is public text: no dashes used as punctuation, and nothing that states a policy choice the changelog does not already record.
5. `CHANGELOG.md`: rename `## Unreleased` to `## vX <Name> (Month D, YYYY)`, add `### Summary` with one bullet per change listed under it, and add a new empty `## Unreleased` above it.
6. Run the `CLAUDE.md` validators. The only allowed line besides `done` is `MISSING 3.2.4 in platform\appendices\appendix-d-section-map.md`.
7. List any remaining old version labels without changing them:
   ```powershell
   git grep -n "<old version, dots escaped>" -- . ":(exclude)CHANGELOG.md" ":(exclude)decisions/" ":(exclude)docs/"
   ```
   Edition history entries and "earlier editions" lists are expected; anything else is probably a missed label.

**STOP 1.** Show `git status` and `git diff --stat`, the leftover label list, and any drafted text. Remind Gregory that `index.html` will link to `docs/*_vX.pdf` files that do not exist until Part 3. Wait for a yes, then commit (`Release vX: version bump and changelog`) and push to `main`.

## Part 2: tag

**STOP 2.** Ask exactly: "Push tag vX? This runs Build editions and publishes the release." Wait for a yes. Then:

```powershell
git tag -a vX -m "vX <Name>"
git push origin vX
```

Earlier tags are annotated with the message `vX <Name>`; check with `git tag -n1` if unsure.

## Part 3: build and PDFs

1. `gh auth status`. If not signed in, stop and ask Gregory to run `gh auth login` in a separate terminal.
2. Find the run with `gh run list --workflow build.yml --limit 1`, then run `gh run watch <run-id> --exit-status` in the background. Builds usually take about 2 minutes but have taken 40, so don't treat slowness as failure. If it fails, show `gh run view <run-id> --log-failed` and stop.
3. Download only the PDFs: `gh release download vX --pattern "*.pdf" --dir docs`. Delete nothing.
4. Confirm all six files exist, are not empty, and start with `%PDF-`. Report each size next to the previous version's file:
   `Full_Platform`, `Executive_Summary`, `One_Pager`, `Social_Security_Solvency`, `Universal_Health_Insurance`, `Frontier_AI_Governance` (each `_vX.pdf`).

**STOP 3.** Show `git status` and `git diff --stat` (use `git add -N` on the new PDFs so they appear, then `git reset -q docs`). Wait for a yes, then commit (`Add vX PDFs to docs/`) and push to `main`.

## Part 4: check the live site

About two minutes after the push, in the background, check each `https://meyersgl.github.io/docs/<file>_vX.pdf` with `Invoke-WebRequest -Method Head -UseBasicParsing` and report the status code and Content-Length. Every file should return 200 with the committed size. If any doesn't, wait another two minutes and check again before reporting a problem.

End with a short recap: the commits, the tag, the build result, the link check, and anything still open.
