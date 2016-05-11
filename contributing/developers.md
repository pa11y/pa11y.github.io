---
title: Developers - Contributing to Pa11y
description: How developers can conribute to Pa11y projects, and development-specific guidelines.
permalink: /contributing/developers/
---


# Developers

**:warning: This page is not complete yet :warning:**

  - [Testing](#testing)
  - Releasing/versioning
  - Libraries/tools
  - Code style


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
