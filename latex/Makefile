# usage:
#   make once -> single compilation to fix syntax issues
#   make all -> multiple compilation steps to come upto pdf file
# The dependencies are as per included images and bibliographic info.

once: sample.tex erf.eps refs.bib
	latex sample.tex
all: sample.tex erf.eps refs.bib
	latex sample.tex
	latex sample.tex
	bibtex sample
	latex sample.tex
	dvipdf sample.dvi
# If the above steps are executed successfully, the file sample.pdf should be ready.
clean:
	rm -f sample.aux sample.bbl sample.log sample.dvi
