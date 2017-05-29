#!/bin/sh
CXX=xelatex
TITLE=TosKer_slides
AUTHOR=Luca_Rinaldi
DATE=$(date +%F)

rm *.aux
rm *.bib
rm *.log
rm *.out
$CXX main.tex
$CXX main.tex
# bibtex main
# $CXX main.tex
# $CXX main.tex

NAME=$TITLE-$AUTHOR
NAME_DATA=$NAME[$DATE]
rm ../$NAME*
cp main.pdf ../$NAME.pdf
mv main.pdf ../$NAME_DATA.pdf
