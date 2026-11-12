#!/usr/bin/env bash
# Builds Word and PDF editions from the markdown sources.
# Word files use build/reference.docx styles; PDFs are rendered from those
# Word files by LibreOffice (build/docx2pdf.py) so they match the Word look,
# with the table of contents refreshed before export.
# Usage: bash build/build.sh v1.1
set -euo pipefail
VERSION="${1:-dev}"; OUT="build/out"; mkdir -p "$OUT"
REF=(--reference-doc=build/reference.docx)

docx() { pandoc "$@" "${REF[@]}"; }
pdf()  { python3 build/docx2pdf.py "$1" "$2"; }

mapfile -t PARTS < platform/build-order.txt
docx "${PARTS[@]}" --toc --toc-depth=2 \
  --metadata title="The Social Democratic Market Platform" \
  --metadata subtitle="Version ${VERSION#v}" --metadata author="Gregory L. Meyers" \
  -o "$OUT/Full_Platform_${VERSION}.docx"
pdf "$OUT/Full_Platform_${VERSION}.docx" "$OUT/Full_Platform_${VERSION}.pdf"

pandoc summaries/executive-summary.md --toc --toc-depth=1 --reference-doc=build/reference-summary.docx -o "$OUT/Executive_Summary_${VERSION}.docx"
pdf "$OUT/Executive_Summary_${VERSION}.docx" "$OUT/Executive_Summary_${VERSION}.pdf"
pandoc summaries/one-pager.md --reference-doc=build/reference-onepager.docx -o "$OUT/One_Pager_${VERSION}.docx"
pdf "$OUT/One_Pager_${VERSION}.docx" "$OUT/One_Pager_${VERSION}.pdf"

declare -A NAME=( [social-security]=Social_Security_Solvency
                  [universal-health-insurance]=Universal_Health_Insurance
                  [frontier-ai-governance]=Frontier_AI_Governance )
for dir in "${!NAME[@]}"; do
  n="${NAME[$dir]}_${VERSION}"
  docx "white-papers/$dir/paper.md" -o "$OUT/$n.docx"
  pdf "$OUT/$n.docx" "$OUT/$n.pdf"
done
ls -l "$OUT"
