# Empty for now to avoid travis errors

# Added install-theme target as part of refactoring build
install-theme:
	git clone https://github.com/ix-sthlm/hyde-x ./themes/hyde-x

# Make target latex
latex:
	mkdir -p static/documents

	for i in `ls documents`; do        \
        echo $$i;                       \
		pdflatex -output-directory static/documents documents/$$i; \
    done

	rm static/documents/*aux static/documents/*log
