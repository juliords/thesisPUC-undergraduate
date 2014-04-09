CC=pdflatex

MODEL=./Model

.phony: all clean

all: Exemplo.pdf

%.pdf: %.tex
	TEXINPUTS=".:$(MODEL):" $(CC) $<

clean:
	rm -rf *{aux,lof,log,lot,out,pdf,toc}
