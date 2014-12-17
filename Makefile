LIBDIR=./lib/
TARGET=relatorio2

.phony: all open clean

all: $(TARGET).pdf

%.pdf: %.tex %.bib
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*
	BSTINPUTS=".:$(LIBDIR):" bibtex   $*
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*
	TEXINPUTS=".:$(LIBDIR):" pdflatex $*

open: $(TARGET).pdf
	okular $< &

clean:
	rm -rf *.{aux,lof,log,lot,out,toc,bbl,blg,brf}
