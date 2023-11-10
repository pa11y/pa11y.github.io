# The Pa11y Website

The Pa11y website, [pa11y.org] is built with [Jekyll] and hosted on GitHub Pages.

[![Build status][shield-build]][info-build]

## Running locally

### Setting up your system

This project uses [Ruby], its packaging helper [Bundler], and [Node.js].

Here's one way to install each of these if you don't have them already. This assumes you're using macOS or Linux, with Homebrew or Linuxbrew installed. It will install nvm, chruby, and ruby-install.

```sh
# Install Ruby and Bundler
brew install ruby-install chruby
ruby-install "$(cat .ruby-version)"
gem install bundler

# Install Node and update npm
brew install nvm
nvm install
nvm install-latest-npm
```

### Serving the site from your machine

```sh
make install
make serve
open http://localhost:4000
```

## Editing this site

### Home page

The home page text content can be found in [`pages/home.md`](pages/home.md).

### News feed

The news feed content can be found in the [`_posts` folder](_posts). It's best to copy an existing item and change the date/title.

It's important to note that the date appears in both the file name and the `date` front-matter property.

You may add authorship details to a post using the `author.name` and `author.url` front-matter properties. Both are optional. The rule of thumb is that generic posts (like version releases/launches etc) should have no author, but more opinion or analysis posts should.

### Tutorials page

The tutorials page text content can be found in [`pages/tutorials.md`](pages/tutorials.md). The actual tutorial information is in [`_data/tutorials.yml`](_data/tutorials.yml); there are instructions at the top of this file.

### Contributor guides

The contributor guides live in the [`contributing` folder](contributing) as Markdown files. Edit the others at will, but the Code of Conduct should not be edited – we use the [Contributor Covenant][contributor-covenant] without modifications.

### Contact page

The contact page text content can be found in [`pages/contact.md`](pages/contact.md). To add your contact details to this page, edit [`_data/team.yml`](_data/team.yml); there are instructions at the top of this file.

## Testing

Every page on this site is tested in CI using Pa11y. Pull requests will fail the build if they introduce accessibility errors. You can run Pa11y against a site that's running locally with:

```sh
make test
```

## Licence

[![CC-BY-NC](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)][license]  
Licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License][license].  
Copyright &copy; 2016–2023, Team Pa11y

[pa11y.org]: https://pa11y.org
[bundler]: http://bundler.io/
[contributor-covenant]: http://contributor-covenant.org
[jekyll]: http://jekyllrb.com/
[license]: http://creativecommons.org/licenses/by-nc/4.0/
[node.js]: https://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/

[info-build]: https://github.com/pa11y/pa11y.github.io/actions/workflows/build-and-test.yml
[shield-build]: https://github.com/pa11y/pa11y.github.io/actions/workflows/build-and-test.yml/badge.svg
