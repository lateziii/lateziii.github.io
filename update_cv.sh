#!/bin/bash
set -e
cd "$(dirname "$0")"
git submodule update --remote cv
cd cv && pdflatex -interaction=nonstopmode update.tex && cd ..
cp cv/update.pdf cv.pdf
quarto render
