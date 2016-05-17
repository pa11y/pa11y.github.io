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

:construction: TODO


## Opening a Pull Request

:construction: TODO


## Code Style

:construction: TODO very brief code style guidelines


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
curl {{site.github.url}}/contributing/developers/resources/editorconfig > .editorconfig
curl {{site.github.url}}/contributing/developers/resources/jscsrc > .jscsrc
curl {{site.github.url}}/contributing/developers/resources/jshintignore > .jshintignore
curl {{site.github.url}}/contributing/developers/resources/jshintrc > .jshintrc
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

:construction: TODO guide for core contributors who have the ability to release



[contact]: /contact/
[editorconfig]: http://editorconfig.org/
[istanbul]: https://github.com/gotwarlost/istanbul
[jscs]: http://jscs.info/
[jshint]: http://jshint.com/
[make]: https://www.gnu.org/software/make/
[mocha]: https://mochajs.org/
[mockery]: https://github.com/mfncooper/mockery
[pa11y-tests]: https://github.com/springernature/pa11y/tree/master/test/unit
[proclaim]: https://github.com/rowanmanning/proclaim
[sinon]: http://sinonjs.org/
