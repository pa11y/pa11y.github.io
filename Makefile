# Use `make --quiet` to suppress command echoing.

HOST = localhost:4000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

# Install dependencies
install:
	echo "Installing dependencies"
	bundle install
	npm install

# Build the site
build:
	echo "Building site"
	bundle exec jekyll build --drafts

# Watch the site for changes, then build
watch:
	echo "Watching the source code for changes; rebuilding on change"
	bundle exec jekyll build --watch --drafts

# Serve the site
serve:
	echo "Serving site"
	bundle exec jekyll serve --detach --watch --drafts

# Run pa11y against the site
test:
	echo "Testing site with Pa11y"
	pa11y-ci --sitemap "http://$(HOST)/sitemap.xml" --sitemap-find "(pa11y.org|pa11y.github.io)/pa11y" --sitemap-replace "$(HOST)"
