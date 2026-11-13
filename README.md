# The Social Democratic Market Platform

*Government provides the foundation. Citizens provide the ambition. Markets provide the growth.*

A working-draft policy platform by Gregory L. Meyers, open to expert review. The website is at **https://meyersgl.github.io/**.

## Current edition

**v1.3 Costed Edition** (November 2026), published as PDFs in [`docs/`](docs/) alongside the v1.0, v1.1, and v1.2 editions. The markdown in this repository is the master source; see [`CHANGELOG.md`](CHANGELOG.md).

## What's here

| Folder | Contents |
| --- | --- |
| [`platform/`](platform/) | The full platform, one file per chapter. [`build-order.txt`](platform/build-order.txt) lists the reading order. |
| [`white-papers/`](white-papers/) | Standalone papers: Social Security, Universal Health Insurance, Frontier AI Governance, and [forthcoming papers](white-papers/forthcoming/). |
| [`decisions/`](decisions/) | One record per settled policy choice: the question, the decision, and why. |
| [`data/`](data/) | Every cited statistic with its source and date, the revenue-to-use assignments, and the costing table. |
| [`docs/`](docs/) | Published PDFs. Filenames stay stable so links keep working. |
| [`templates/`](templates/) | Templates for chapters, white papers, and decision records. |
| `index.html`, `style.css` | The website. |

## How to review

Critique is the point. Experts should start with [`REVIEW.md`](REVIEW.md), which lists the questions where review is most needed. Open an [issue](https://github.com/meyersgl/meyersgl.github.io/issues/new/choose) using the template that fits (cost or revenue estimate, fact-check, contradiction report, or policy feedback), use [Discussions](https://github.com/meyersgl/meyersgl.github.io/discussions) for open questions, and include evidence. See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## How the PDFs are built

`build/build.sh` converts the markdown into DOCX and PDF with [pandoc](https://pandoc.org/), using `build/reference.docx` for Word styling. The GitHub Actions workflow in `.github/workflows/build.yml` runs it for every release tag and attaches the files to the release.

## License

Platform and white-paper text: CC BY-ND 4.0. Data, templates, and tooling: CC BY 4.0. See [`LICENSE`](LICENSE). To cite, see [`CITATION.cff`](CITATION.cff).
