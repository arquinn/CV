
TEX = $(wildcard *.tex)

.PHONY: all clean

all: CV.pdf

%.pdf: %.tex
	echo $(TEX)
	pdflatex $^


clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf