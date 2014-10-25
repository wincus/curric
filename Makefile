AUTHOR = Juan A Moyano
SOURCE = *.tex
TARGET =  curric.dvi
TARGETPDF = curric.pdf
OUTDIR = pdf

all: $(TARGETPDF)

%.pdf: %.tex
	pdflatex -output-directory $(OUTDIR) $<

$(TARGET): $(SOURCE)

$(TARGETPDF): $(TARGET)

clean:
	$(MAKE) -C $(OUTDIR) $@
