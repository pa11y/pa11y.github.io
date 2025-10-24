# Use `make --quiet` to suppress all command echoing.

HOST = localhost:4000
URL = http://$(HOST)

install:
	@echo "Installing dependencies"
	bundle install
	npm install

build:
	@echo "Building site"
	bundle exec jekyll build --drafts

watch:
	@echo "Watching the source code for changes; rebuilding on change"
	bundle exec jekyll build --watch --drafts

serve:
	@echo "Serving site"
	bundle exec jekyll serve --detach --watch --drafts

test:
	@echo "Testing site with Pa11y"
	npx --yes pa11y-ci -- --sitemap "$(URL)/sitemap.xml" --sitemap-find "(pa11y.org|pa11y.github.io)/pa11y" --sitemap-replace "$(HOST)"

browse:
	@echo "Opening in default browser"
	@(open "$(URL)" || xdg-open "$(URL)") 2>/dev/null
