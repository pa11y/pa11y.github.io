---
title: Developers - Contributing to Pa11y
description: How developers can conribute to Pa11y projects, and development-specific guidelines.
permalink: /contributing/developers/
---


# Developers

So you'd like to contribute some code, report a bug, or request a feature? You're in the right place! This guide covers a lot of the basics of starting to contribute back to Pa11y.

  - [Reporting Bugs](#reporting-bugs)
  - [Requesting Features](#requesting-features)
  - [Opening a Pull Request](#opening-a-pull-request)
  - [Code Style](#code-style)
  - [Testing](#testing)
  - [Releasing/Versioning](#releasingversioning)


## Reporting Bugs

We like it when people report bugs in our projects, and would definitely rather _know_ about them than be left in the dark. We use GitHub issues for bug tracking. When filing a bug report, there are some guidelines you can follow which will help us quickly resolve your issue:

  - ### Check if the bug has already been reported
    You can do this by searching the repository. This gives us more time to focus on existing bugs, and it might help you find a solution more quickly.

  - ### Make sure your software is up to date
    It may be that your bug has already been fixed in a newer version.

  - ### Provide steps to reproduce
    Your bug will generally get fixed much more quickly if you provide clear steps to reproduce the problem. This should include the version numbers of any relevant software. If you don't provide this, then it'll almost certainly be our first question :smile:

  - ### Write a failing test
    This is not _required_ to file a bug report, but we'll love you if you add one! Writing a failing [unit or integration test](#testing) and opening a pull request will help us quickly locate the issue.

  - ### Open multiple bug reports
    If you have multiple different bugs, it's best to open each as a separate GitHub issue.


## Requesting Features

When making a feature request, it's helpful for us if you follow these guidelines.

  - ### Check if the feature has already been requested
    You can do this by searching the repository. You may find that somebody has already asked for the feature you're thinking of! If this is the case then feel free to join in the comments.

  - ### Phrase as user needs
    If you phrase your feature request as a user need rather than a proposed solution, it opens up more potential for discussion and collaboration – _way_ more fun for everyone.

  - ### Open multiple feature requests
    If you have multiple different requests, it's best to open each as a separate GitHub issue.

It's important to note that we can't accept _every_ feature request, we'll always discuss why if we're not going to accept them though.


## Opening a Pull Request

Please do! All of the code in Pa11y projects is peer-reviewed, this isn't as scary as it sounds, we're a considerate bunch and we love to help people learn. There are some things you can do to help this review go smoothly:

  - ### Discuss features first
    If you're thinking of opening a pull request that adds a feature, you'll save yourself some time and effort if you [discuss it in a feature request first](#requesting-features). The review is guaranteed to go more smoothly if we've chatted about it beforehand.

  - ### Write and run the tests
    Each project should have instructions on how to [run the tests](#testing). If you haven't done much automated testing before then [get in touch][contact] and we'll teach you a bit! New features should have new unit or integration tests, and bugs should have tests to prevent regressions.

  - ### Update the documentation
    The user documentation should be kept up to date with any changes made. Use inline code comments as developer documentation, focusing more on _why_ your code does something than _what_ it's doing. 

  - ### Follow the code style
    We have a [code style](#code-style), and the pull request build will fail if this isn't followed. If the code style varies for a project already then it's best to follow the example set in that project. We're not mean, we just like consistency **a lot** :wink:

  - ### Reference other issues
    When fixing a bug, reference the original report; when adding a feature, link to the original feature request. It'll help us massively!


## Code Style

Pa11y has a code style, but we'll keep it brief. The best way to ensure you stick to it is to make your work consistent with the code around it. We also have ways to [enforce the code style](#code-quality-and-consistency), so don't let it get in the way of your flow – you can fix it afterwards!

### General Style

  - Tabs for indentation (except `package.json` and Markdown)
  - 100 characters per line
  - Don't abbreviate names (`request` is better than `req`)

### JavaScript Style

  - Use semicolons
  - Use `'`, not `"`
  - Use strict mode `'use strict';`
  - Use ES6 where available
  - Commas at the end of the line, not the start

### HTML Style

  - Use HTML5
  - Use lowercase names for tags/attributes
  - Use `"` to quote attributes

### CSS/Sass Style

  - Use [BEM]-style naming for classes
  - One selector per line
  - One property/value per line
  - Don't style IDs

### Markdown Style

  - Add two empty lines above a `h2` (to break up sections)
  - Indent lists and quotes (by two spaces)
  - Use [reference-style links][reference-links] as much as possible


## Testing

Pa11y projects should always be well tested and consider code quality/consistenct. Pa11y projects normally use the following tools for this:

  - [Mocha] for unit and integration testing (with [Proclaim] as an assertion library)
  - [JSHint], [JSCS], and [EditorConfig] for code quality and consistency
  - [Make] as a build tool

### Unit Testing

As much code as possible should be unit tested with [Mocha], and a coverage of `90` or higher should be verified with [Istanbul]. [Sinon] and [Mockery] are normally used for mocking.

If in doubt, [speak to a member of the team][contact] – someone will be happy to help. Also the existing projects make good use of these tools, so [looking through the tests][pa11y-tests] might help.

### Integration Testing

We also use Mocha for integration tests. These are normally only added for larger projects with more complex integrations. For example an extensive command-line tool or a database-driven website.

### Code Quality and Consistency

We provide standard configuration files which can be easily copied into Pa11y projects. These configurations are geared towards ES6-based projects, and don't need to be used in legacy projects.

Copy these files into your project, and see the section on [build tools](#build-tools) for information on how to verify that they pass:

```sh
curl {{site.github.url}}/resources/development/editorconfig > .editorconfig
curl {{site.github.url}}/resources/development/jscsrc > .jscsrc
curl {{site.github.url}}/resources/development/jshintignore > .jshintignore
curl {{site.github.url}}/resources/development/jshintrc > .jshintrc
```

### Build Tools

Ideally every project should implement at least the following [Make] targets:

```sh
make install  # Install dependencies (`make deps` also acceptable in legacy projects)
make test     # Run all of the tests (unit, integration, coverage)
make verify   # Run linters (`make lint` also acceptable in legacy projects)
make ci       # Alias to `make lint test`
```


## Releasing/Versioning

This section is for core contributors who have write access to repositories. Hi core contributors :wave:

All of our projects are versioned using [Semantic Versioning] (except for this site), you should familiarise yourself with this. The following guide will outline how to tag and release a new version of all projects, it assumes that all the code you wish to release is now on the `master` or main branch.

  1. **Review the commits since the last release**. You can find the last release in the git log, or by using the compare feature on GitHub. Make sure you've pulled all of the latest changes.

  2. **Decide on a version**. Work out whether this release is major, minor, or patch level. Major releases are generally planned out; if a breaking change has snuck into `master` without prior-planning it may be worth removing it or attempting to make it backwards-compatible.

  3. **Write the changelog**. Most projects have a `CHANGELOG.md` file in the root. You should create a new section at the top with the new version number and the date, then outline all of the changes as a list. Follow the style of the rest of the document.

  4. **Update any package files**. Add the new version to package files. This could include `package.json` or `bower.json` as examples. A quick way to check if you've got them all is by running: `git grep "current-version-number"`

  5. **[legacy] Update the README**. Some legacy projects include the version number in the README file. This should be updated to reflect the new version.

  6. **Commit your changes**. Commit the changes to changelong, README, and package files. The commit message should be "Version x.x.x" (exact casing, and with no "v" preceeding the version number). This is the _only_ time you're allowed to commit directly to `master`.

  7. **Add a tag**. Tag the last commit with the new version number using `git tag x.x.x` (note there's no "v" preceeding the version number).

  8. **Push your commit _and_ tag**. You can push your version commit and tag now. It's really important to push the tag as well! Run: `git push && git push --tags`

  9. **Publish**. If the project is on [npm] then you'll need to have access, and run `npm publish`.

  10. **Announce**. You should announce that a new release has been made on the [Pa11y Twitter account][twitter]. Follow the style of previous tweets, but feel free to give it some personality!

  11. **Celebrate**. :tada::beer::cake::cocktail:



[bem]: http://getbem.com/naming/
[contact]: /contact/
[editorconfig]: http://editorconfig.org/
[istanbul]: https://github.com/gotwarlost/istanbul
[jscs]: http://jscs.info/
[jshint]: http://jshint.com/
[make]: https://www.gnu.org/software/make/
[mocha]: https://mochajs.org/
[mockery]: https://github.com/mfncooper/mockery
[npm]: https://www.npmjs.com/
[pa11y-tests]: https://github.com/pa11y/pa11y/tree/master/test/unit
[proclaim]: https://github.com/rowanmanning/proclaim
[reference-links]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links
[sinon]: http://sinonjs.org/
[semantic versioning]: http://semver.org/
[twitter]: /contributing/communications/#twitter
