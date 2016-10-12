DOC=doc

all:    ${DOC}.pdf


gitrevision:
	git rev-parse HEAD > gitrevision


${DOC}.pdf: gitrevision doc.tex dataset.tex concepts.tex method.tex urd.tex setup.tex iterator.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make ${DOC}.tex

clean:
	latexmk -CA
	rm ${DOC}.pdf
