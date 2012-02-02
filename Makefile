DOCNAME=synopsis

TEMPDIR=intermediates

all: $(DOCNAME).pdf

%.pdf: %.tex
	mkdir -p $(TEMPDIR)/$<
	cd $(TEMPDIR)/$<; rubber -d ../../$<
	cp $(TEMPDIR)/$</$@ .

clean:
	rm -rf $(TEMPDIR)

clean-all: clean
	rm -f $(DOCNAME).pdf
