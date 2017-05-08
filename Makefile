.PHONY: all docx

SRC=$(shell find src/ -name '*.md')

all: docx

docx: paper.docx


paper.docx: $(SRC)
	pandoc -o $@ -t docx --toc $<
