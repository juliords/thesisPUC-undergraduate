LIBDIR=./lib/
TARGET=exemplo

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
	rm -rf *.{aux,lof,log,lot,out,dvi,toc,bbl,blg,brf,pdf}
