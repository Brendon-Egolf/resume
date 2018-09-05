.PHONY: all
CC = latexmk
LATEXARGS = -pdf -use-make
MUPDFARGS = -r 200
SOURCE = document.tex
PDF = $(subst .tex,.pdf,$(SOURCE))


all: $(PDF) view clean


$(PDF): $(SOURCE)
	$(CC) $(LATEXARGS) $<

view: $(PDF)
	mupdf $(MUPDFARGS) $<

clean:
