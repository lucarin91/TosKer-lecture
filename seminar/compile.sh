#!/bin/sh
CXX=xelatex
TITLE=TosKer_seminar_slides
AUTHOR=Luca_Rinaldi
# DATE=$(date +%F)

rm *.aux
rm *.bib
rm *.log
rm *.out
rm *.nav
$CXX main.tex
$CXX main.tex
# bibtex main
# $CXX main.tex
# $CXX main.tex

NAME=$TITLE-$AUTHOR
# NAME_DATA=$NAME[$DATE]
rm $NAME*
mv main.pdf $NAME.pdf
# mv main.pdf ../$NAME_DATA.pdf
