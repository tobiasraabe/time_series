GITHUB_PAGES_BRANCH=gh-pages
DOCS_DIR=docs/_build/html

help:
	@echo 'Makefile for Time Series Documentation                             '
	@echo '                                                                   '
	@echo 'Usage:                                                             '
	@echo '   make github                         publish site on Github      '
	@echo '   make livehtml                       start development server    '


clean:
	cd docs && make clean

html:
	cd docs && make html

github:
	make clean
	make html
	ghp-import -m "Generate Time Series site" --branch $(GITHUB_PAGES_BRANCH) --push --force $(DOCS_DIR)
	git push origin $(GITHUB_PAGES_BRANCH)

livehtml:
	cd docs && make livehtml

.PHONY: help github
