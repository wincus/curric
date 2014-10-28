AUTHOR = Juan A Moyano
SOURCE = curric.tex
TARGETPDF = curric.pdf
OUTDIR = pdf

all: $(TARGETPDF)

%.pdf: %.tex
	pdflatex -output-directory $(OUTDIR) $<

clean:
	$(MAKE) -C $(OUTDIR) $@

.PHONY: all clean
