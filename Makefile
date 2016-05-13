
HOST = localhost:4000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

# Install dependencies
install:
	@echo "Installing dependencies"
	@bundle install
	@npm install pa11y@^3

# Build the site
build:
	@echo "Building site"
	@bundle exec jekyll build --drafts

# Watch the site for changes, then build
watch:
	@echo "Watching and building site"
	@bundle exec jekyll build --watch --drafts

# Serve the site
serve:
	@echo "Serving site"
	@bundle exec jekyll serve --watch --drafts

# List all of the URLs in a locally running site
list-urls:
	@curl -s http://$(HOST)/sitemap.xml | grep "<loc>" \
		| sed -e 's/<loc>//g' \
		| sed -e 's/<\/loc>//g' \
		| sed -e 's/\(http:\/\/\)pa11y.github.io\/pa11y\(\/\)/\1$(HOST)\2/g' \
		| sort

# Run pa11y against the site
test:
	@echo "Testing site"
	@make list-urls | sed '/^$$/d' | { while read i; do pa11y --ignore "notice;warning" $$i || exit 1; done }
