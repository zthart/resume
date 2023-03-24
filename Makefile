# Source files
TEXFILES=resume.tex

# Binaries
PDFLATEX=pdflatex
TLMGR=tlmgr

# Packages
PACKAGES=fmtcount datetime paralist

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean pdf install-deps

all: pdf

pdf: $(PDFFILES)

clean:
	$(RM) $(PDFFILES)

install-deps:
	$(TLMGR) install $(PACKAGES)

%.pdf %.log: %.tex
	$(PDFLATEX) $<
