# Empty for now to avoid travis errors

# Added install-theme target as part of refactoring build
install-theme:
	git clone https://github.com/ix-sthlm/hyde-x ./themes/hyde-x

# Make target latex
latex:
	mkdir -p static/documents

	for i in `ls documents`; do                                                \
		pdflatex -output-directory static/documents documents/$$i;             \
	done

	rm static/documents/*aux static/documents/*log

# Make target CNAME for github custom domain
cname:
	grep 'baseurl' config.toml |                                               \
		sed -r -e 's#baseurl = "https?://##' -e 's#/"##' > ./public/CNAME
