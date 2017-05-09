.PHONY: all docx

SRC=$(shell find src/ -name '*.md')

all: docx

docx: paper-body.docx


paper-body.docx: $(SRC)
	pandoc -o $@ -t docx $<
