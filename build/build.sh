#!/usr/bin/env bash
# Build DOCX and PDF editions from the markdown master.
# Usage: build/build.sh [version]   (run from the repository root)
set -euo pipefail
VERSION="${1:-dev}"
OUT="build/out"
mkdir -p "$OUT"
mapfile -t PARTS < platform/build-order.txt
META=(--metadata title="The Social Democratic Market Platform" --metadata subtitle="Version ${VERSION}" --metadata author="Gregory L. Meyers")

# Full platform
pandoc "${PARTS[@]}" "${META[@]}" --toc --toc-depth=2 \
  --reference-doc=build/reference.docx -o "$OUT/Full_Platform_${VERSION}.docx"
pandoc "${PARTS[@]}" "${META[@]}" --toc --toc-depth=2 \
  --pdf-engine=xelatex -V geometry:margin=1in -V mainfont="DejaVu Serif" \
  -o "$OUT/Full_Platform_${VERSION}.pdf"

# White papers
for paper in white-papers/*/paper.md; do
  name=$(basename "$(dirname "$paper")")
  pandoc "$paper" --reference-doc=build/reference.docx -o "$OUT/${name}_${VERSION}.docx"
  pandoc "$paper" --pdf-engine=xelatex -V geometry:margin=1in -V mainfont="DejaVu Serif" \
    -o "$OUT/${name}_${VERSION}.pdf"
done
ls -l "$OUT"
