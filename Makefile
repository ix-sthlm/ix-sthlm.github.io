# Empty for now to avoid travis errors

# Added install-theme target as part of refactoring build
install-theme:
	git clone https://github.com/ix-sthlm/hyde-x ./themes/hyde-x

latex:
	echo '\documentclass{article}\begin{document}Hello, world!\end{document}' | pdflatex
	mv article.pdf static/hello_world.pdf
