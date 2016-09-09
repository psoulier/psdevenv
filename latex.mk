.PHONY: clean

BIBTEX=bibtex
LATEX=pdflatex

LATEXFLAGS=-file-line-error -interaction nonstopmode -halt-on-error
BIBTEXTFLAGS=

RERUNTEXT="Rerun to get cross-references right"

Bbibliography := $(wildcard $(subst .pdf,.bib,$(MAKECMDGOALS)))
bibliography := $(subst .bib,.bbl,$(Bbibliography))

#.SECONDARY: $(subst .pdf,.aux,$(MAKECMDGOALS))
#.SECONDARY: $(subst .pdf,.bbl,$(MAKECMDGOALS))

# These intermediate files get deleted otherwise.  Has to do with the files
# being generated multiple times for latex...messes up the time stamps.
# Don't know that keeping them is any more use than letting make get rid of
# them.
.PRECIOUS: %.aux %.bbl

%.pdf: 	%.tex $(bibliography)
	$(LATEX) $(LATEXFLAGS) $*
	@if egrep $(RERUNTEXT) $*.log; then $(LATEX) $(LATEXFLAGS) $* ; fi

%.aux:	%.tex
	$(LATEX) $(LATEXFLAGS) $*

%.bbl:	%.aux %.bib
	$(BIBTEX) $*

clean:
	rm -rf *.aux *.bbl *.blg *.log *.pdf *.toc 


