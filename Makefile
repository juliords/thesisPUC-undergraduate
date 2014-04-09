CC=pdflatex

MODELDIR=./Model
MENV=TEXINPUTS=".:$(MODELDIR):"

TARGET=Proposta.pdf

.phony: all open clean

all: open

open: $(TARGET)
	evince $< &

%.pdf: %.tex
	 $(MENV) $(CC) $<

clean:
	rm -rf *.{aux,lof,log,lot,out,pdf,toc}
