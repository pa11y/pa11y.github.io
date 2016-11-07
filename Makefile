
HOST = localhost:4000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

# Install dependencies
install:
	@echo "Installing dependencies"
	@bundle install
	@npm install pa11y-ci@^0.2

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

# Run pa11y against the site
test:
	@echo "Testing site"
	@pa11y-ci --sitemap "http://$(HOST)/sitemap.xml" --sitemap-find "(pa11y.org|pa11y.github.io)/pa11y" --sitemap-replace "$(HOST)"
