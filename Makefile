build:
	uv run --project ../python-recettes recettes build recipes --diagrams
publish: build
	rsync -qazP site/. notmyidea:recettes.notmyidea.org/
	git push
serve: build
	python3 -m http.server -d site
