LIBDIR=./lib/
TARGET=relatorio1

.phony: all open clean

all: $(TARGET).pdf

%.pdf: %.tex %.bib
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*
	BSTINPUTS=".:$(LIBDIR):" bibtex   $*
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*

open: $(TARGET).pdf
	evince $< &

clean:
	rm -rf *.{aux,lof,log,lot,out,pdf,toc,bbl,blg,brf,pdf}
