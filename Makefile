
TEX = $(wildcard *.tex)

.PHONY: all clean

all: Andrew_Quinn_CV.pdf 

Andrew_Quinn_CV.pdf: CV.pdf
	mv $^ $@

%.pdf: %.tex
	echo $(TEX)
	pdflatex $^


clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
