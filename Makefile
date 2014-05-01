AUTHOR = Juan A Moyano
SOURCE = *.tex
TARGET =  curric.dvi
TARGETPDF = curric.pdf

all: $(TARGETPDF)

%.dvi: %.tex
	latex $< 

%.pdf: %.tex
	pdflatex $<

$(TARGET): $(SOURCE)

$(TARGETPDF): $(TARGET)

preview: $(TARGET)
	xdvi $<

previewpdf: $(TARGETPDF)
	xdg-open $<

clean:
	rm -fv *.aux *.log *.out $(TARGET) $(TARGETPDF)
