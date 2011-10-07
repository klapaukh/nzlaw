#! /bin/sh

#wordCount=$(./texcount.pl example.tex | sed -n '/Words in text/p' | sed "s/[^0-9]//g")
#sed -i "s/\wordcount{[0-9]*}/\wordcount{$wordCount}/g" example.tex
xelatex example
bibtex example
xelatex example
xelatex example
