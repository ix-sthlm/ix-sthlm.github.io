# Empty for now to avoid travis errors

# Added install-theme target as part of refactoring build
install-theme:
	git clone https://github.com/ix-sthlm/hyde-x ./themes/hyde-x

# Make target latex
latex:
	# Make sure output directory is there
	mkdir -p static/documents

	# Copy all TeX files
	cp -vr documents/* static/documents/

	# Compile all TeX files
	for i in `find static/documents/ -type f -name '*.tex'`; do                \
		pdflatex -output-directory `dirname $$i` $$i;                          \
	done

	# Remove non-pdf files from output
	find static/documents/ -type f ! -name '*pdf' -delete

# Make target CNAME for github custom domain
cname:
	grep 'baseurl' config.toml |                                               \
		sed -r -e 's#baseurl = "https?://##' -e 's#/"##' > ./public/CNAME
