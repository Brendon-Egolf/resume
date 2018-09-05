.PHONY: all
CC = latexmk
LATEXARGS = -pdf -use-make
SOURCE = document.tex
PDF = $(subst .tex,.pdf,$(SOURCE))


all: $(PDF) view clean


$(PDF): $(SOURCE)
	$(CC) $(LATEXARGS) $<

view: $(PDF)
	mupdf -r 200 $<

clean:
