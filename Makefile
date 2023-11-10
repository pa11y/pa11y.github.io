# Use `make --quiet` to suppress command echoing.

HOST = localhost:4000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

install:
	echo "Installing dependencies"
	bundle install
	npm install

build:
	echo "Building site"
	bundle exec jekyll build --drafts

watch:
	echo "Watching the source code for changes; rebuilding on change"
	bundle exec jekyll build --watch --drafts

serve:
	echo "Serving site"
	bundle exec jekyll serve --detach --watch --drafts

test:
	echo "Testing site with Pa11y"
	pa11y-ci --sitemap "http://$(HOST)/sitemap.xml" --sitemap-find "(pa11y.org|pa11y.github.io)/pa11y" --sitemap-replace "$(HOST)"
