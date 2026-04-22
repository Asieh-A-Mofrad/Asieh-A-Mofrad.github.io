#!/usr/bin/env bash

set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")" && pwd)"
CV_DIR="$SITE_DIR/../UiB_Associate_Intelligence_2026/CV_UiB_Associate_Intelligence_2026"
CV_TEX="CV_general_2026.tex"
CV_PDF="CV_general_2026.pdf"

cd "$CV_DIR"
tectonic "$CV_TEX"

cp "$CV_PDF" "$SITE_DIR/CV.pdf"

cd "$SITE_DIR"
quarto render

echo "Site rebuilt successfully."
