
The Pa11y Website (WIP)
=======================

The Pa11y website is built with [Jekyll] and hosted on GitHub Pages. <http://pa11y.org/>.

[![Site Accessibility Tests](https://img.shields.io/travis/pa11y/pa11y.github.io.svg?label=site%20accessibility%20tests)](https://travis-ci.org/pa11y/pa11y.github.io)
[![Join us on Slack](https://pa11y-slack.herokuapp.com/badge.svg)](https://pa11y-slack.herokuapp.com/)


Running locally
---------------

You'll need [Ruby], [Bundler] and [Node.js] installed for this.

  1. Install dependencies: `make install`
  2. Build and serve the site: `make serve`
  3. Visit <http://localhost:4000/>


Editing this site
-----------------

### Home page

The home page text content can be found in [`pages/home.md`](pages/home.md).

### News feed

The news feed content can be found in the [`_posts` folder](_posts). It's best to copy an existing item and change the date/title.

It's important to note that the date appears in both the file name and the `date` front-matter property.

You may add authorship details to a post using the `author.name` and `author.url` front-matter properties. Both are optional. The rule of thumb is that generic posts (like version releases/launches etc) should have no author, but more opinion or analysis posts should.

### Tutorials page

The tutorials page text content can be found in [`pages/tutorials.md`](pages/tutorials.md). The actual tutorial information is in [`_data/tutorials.yml`](_data/tutorials.yml); there are instructions at the top of this file.

### Contributor guides

The contributor guides live in the [`contributing` folder](contributing), these pages are Markdown files. Edit the others at will, but the Code of Conduct should not be edited – we use the [Contributor Covenant][contributor-covenant] without modifications.

### Contact page

The contact page text content can be found in [`pages/contact.md`](pages/contact.md). To add your contact details to this page, edit [`_data/team.yml`](_data/team.yml); there are instructions at the top of this file.


Testing
-------

Every page on this site is tested with Pa11y on CI. Pull requests will fail the build if they introduce accessibility errors. You can run Pa11y against a site that's running locally with:

```
make test
```


Licence
-------

[![CC-BY-NC](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)][license]<br/>
Licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License][license].<br/>
Copyright &copy; 2016–2017, Team Pa11y



[bundler]: http://bundler.io/
[contributor-covenant]: http://contributor-covenant.org
[jekyll]: http://jekyllrb.com/
[license]: http://creativecommons.org/licenses/by-nc/4.0/
[node.js]: https://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
