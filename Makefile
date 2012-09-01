RM = rm
BIBER = biber
BIBEROPT = -V 
TEX = xelatex
TEXOPTS = --halt-on-error --shell-escape

example: example.pdf

%.pdf: %.bbl
	$(TEX) $(TEXOPTS) $*
	$(TEX) $(TEXOPTS) $*

%.bbl: %.aux
	$(BIBER) $(BIBEROPT) $*

%.aux: %.tex
	$(TEX) $(TEXOPTS) $*

.SUFFIXES: .tex .aux .bbl .pdf

clean:
	$(RM) -f *.aux *.bbl *.pdf *.log *.out *.blg *-blx.bib *.div *.xml *.bcf *.synctex.gz *.backup *.pyg *.toc
