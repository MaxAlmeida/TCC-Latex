file = interferenciasVMs

all: bib tex
	pdflatex $(file).tex
	gnome-open $(file).pdf &

bib: tcc-maxwell.bib
	pdflatex $(file).tex
	bibtex $(file).aux

tex: $(file).tex
	pdflatex $(file).tex

clean:
	rm -f *.bbl *.aux *.blg *.log *.pdf
