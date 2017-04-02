PDF: PDFLATEX
	evince cap.pdf&

PDFLATEX: LATEX1
	pdflatex -synctex=1 -interaction=nonstopmode cap


LATEX1: NOMENCLATURA BIB
	pdflatex cap

BIB: LATEX0
	bibtex cap

NOMENCLATURA: LATEX0 cap.nlo
	makeindex cap.nlo -s nomencl.ist -o cap.nls

LATEX0: cap.tex macros.tex
	pdflatex cap	


clear: cap.tex
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.ilg
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.nlo
	rm -f *.nls
	rm -f *.out
	rm -f *.pdf
	rm -f *.run.xm
	rm -f *.toc
	rm -f *.synctex.gz
	rm -f *.run.xml

