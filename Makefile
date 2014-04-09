CC=pdflatex

MODEL=./Model

.phony: all clean

all: Proposta.pdf

%.pdf: %.tex
	TEXINPUTS=".:$(MODEL):" $(CC) $<

clean:
	rm -rf *.{aux,lof,log,lot,out,pdf,toc}
