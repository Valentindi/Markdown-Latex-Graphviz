#!/usr/bin/env bash

IN=$1

DIR=${SRC%$BASE}

echo "$DIR"

FILENAME=${1##*/}

echo "$FILENAME"

FILENAME2="${FILENAME%.*}"

echo "$FILENAME2"


LATEX="$FILENAME2.tex"

PDF="$FILENAME2.pdf"

echo "."



echo "Generating TEX"
echo ".."

pandoc --from Markdown --to latex -s md-latex.yaml $IN > $LATEX 
echo "..."

echo "Generating PDF"
echo "...."

pandoc  --latex-engine=xelatex --latex-engine-opt=-shell-escape $LATEX

#pandoc  --latex-engine=xelatex --from latex --to pdf -t latex $LATEX -o $PDF md-latex.yaml
echo "....."

xelatex -shell-escape $LATEX
echo "......"
xelatex $LATEX > $PDF
echo "......."

pandoc  --latex-engine=xelatex --latex-engine-opt=-shell-escape $LATEX

#pandoc  --latex-engine=xelatex --from latex --to pdf -t latex $LATEX -o $PDF md-latex.yaml
echo "....."

xelatex -shell-escape $LATEX
echo "......"
xelatex $LATEX > $PDF
echo "......."


echo "Ready"

open $PDF