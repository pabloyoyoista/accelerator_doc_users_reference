DOC=doc

all:    ${DOC}.pdf



${DOC}.pdf: doc.tex dataset.tex concepts.tex method.tex urd.tex setup.tex iterator.tex standard_methods.tex xmtitle.tex introduction.tex
	git rev-parse HEAD > gitrevision
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make ${DOC}.tex

clean:
	latexmk -CA
	rm -f ${DOC}.pdf
