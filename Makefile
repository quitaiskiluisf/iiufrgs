export TEXINPUTS = estilos/:
export BSTINPUTS = $(TEXINPUTS)
export BIBINPUTS = $(TEXINPUTS)

PDFLATEX = pdflatex -halt-on-error -file-line-error -interaction=nonstopmode
FILENAME = ./tcc

all:
	$(PDFLATEX) $(FILENAME).tex
	$(PDFLATEX) $(FILENAME).tex
	bibtex $(FILENAME)
	$(PDFLATEX) $(FILENAME).tex
	$(PDFLATEX) $(FILENAME).tex
