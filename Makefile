build:
	uvx recettes build recipes
publish: build
	rsync -qazP site/. notmyidea:recettes.notmyidea.org/
	git push
