PAPER =paper 
TEX = $(wildcard *.tex)
BIB = references.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS) 
	echo $(FIGS)
	pdflatex -shell-escape $(PAPER)
	bibtex $(PAPER)
	pdflatex -shell-escape $(PAPER)
	pdflatex -shell-escape $(PAPER)

clean:
	rm -rf *.aux *.bbl *.blg *.log *.out $(PAPER).pdf 

