CC=pdflatex

LIBDIR=./lib
MENV=TEXINPUTS=".:$(LIBDIR):"

TARGET=Proposta.pdf

.phony: all open clean

all: clean open

open: $(TARGET)
	evince $< &

%.pdf: %.tex
	 $(MENV) $(CC) $<

clean:
	rm -rf *.{aux,lof,log,lot,out,pdf,toc}
