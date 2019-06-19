clean:
	rm -rf themes/ public/ static/documents/

# Downloads the latest theme
install-theme:
	# Create directory for themes
	mkdir -p ./themes

	# Download theme
	curl -L https://github.com/ix-sthlm/hyde-x/archive/master.tar.gz | tar -xz

	# Put theme in directory
	mv ./hyde-x-master ./themes/hyde-x

# Build site
hugo:
	hugo

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

dirlists:
	./.travis/make_document_dirlist.sh static/documents/
	./.travis/make_document_dirlist.sh static/img/

# Make target CNAME for github custom domain
cname:
	echo 'ix.ufs.se' > ./public/CNAME

# Make a copy of the logos and replace all blacks with whites
white-logos:
	cat static/img/logo/ix-drone-logo.svg | sed 's/#000000/#ffffff/g' > static/img/logo/ix-drone-logo-white.svg
	cat static/img/logo/ix-drone-logo-spin.svg | sed 's/#000000/#ffffff/g' > static/img/logo/ix-drone-logo-spin-white.svg

replace-favicon:
	cp -f static/img/logo/favicon.png public/favicon.png
