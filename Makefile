TROFF=groff
TFLAGS=-ms -T pdf -K utf8

all: curriculo.pdf

clean: 
	rm -f *.pdf

curriculo.pdf: resume.ms
	tbl $< | $(TROFF) $(TFLAGS) > $@

.PHONY: clean all
