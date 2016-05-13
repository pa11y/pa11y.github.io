
The Pa11y Website (WIP)
=======================

The Pa11y website is built with [Jekyll] and hosted on GitHub Pages. <http://pa11y.github.io/>.


Running Locally
---------------

You'll need [Ruby], [Bundler] and [Node.js] installed for this.

  1. Install dependencies: `make install`
  2. Build and serve the site: `make serve`
  3. Visit <http://localhost:4000/>


Editing This Site
-----------------

### Home Page

The home page text content can be found in [`pages/home.md`](pages/home.md).

### Contributor Guides

The contributor guides live in the [`contributing` folder](contributing), these pages are Markdown files. Edit the others at will, but the Code of Conduct should not be edited – we use the [Contributor Covenant][contributor-covenant] without modifications.

### Contact Page

The contact page text content can be found in [`pages/contact.md`](pages/contact.md). To add your contact details to this page, edit [`_data/team.yml`](_data/team.yml); there are instructions at the top of this file.


Testing
-------

Every page on this site is tested with Pa11y on CI. Pull requests will fail the build if they introduce accessibility errors. You can run Pa11y against a site that's running locally with:

```
make test
```


Licence
-------

Licensed under the [Lesser General Public License (LGPL-3.0)](LICENSE).  
Copyright &copy; 2016, Team Pa11y.



[bundler]: http://bundler.io/
[contributor-covenant]: http://contributor-covenant.org
[jekyll]: http://jekyllrb.com/
[node.js]: https://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
