LIBDIR=./lib/
TARGET=exemplo

.phony: all open clean

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(TARGET).bib
	TEXINPUTS=".:$(LIBDIR):" pdflatex $(TARGET)
	BSTINPUTS=".:$(LIBDIR):" bibtex $(TARGET)
	TEXINPUTS=".:$(LIBDIR):" pdflatex $(TARGET)
	TEXINPUTS=".:$(LIBDIR):" pdflatex $(TARGET)

open: $(TARGET).pdf
	evince $< &

clean:
	rm -rf *.{aux,lof,log,lot,out,dvi,toc,bbl,blg,brf,pdf}
