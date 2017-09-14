---
title: Updating HTML CodeSniffer
description: An outline of how we deal with HTML CodeSniffer changes.
date: 2017-09-14
---

We recently released a version of Pa11y which triggered some discussion over what constitutes a breaking change. The release in question included an update to [HTML CodeSniffer](http://squizlabs.github.io/HTML_CodeSniffer/) – the tool that Pa11y uses to find accessibility issues.

Pa11y's whole purpose is to exit with a failing error code when a page contains accessibility issues. So as far as Pa11y is concerned, when we make a release which fails builds that previously passed, this is a _feature_.

All of this means that when HTML CodeSniffer releases an update which can detect more accessibility issues, and Pa11y updates the version that we use, we release this under a [MINOR version](http://semver.org/) rather than a MAJOR.

For the majority of Pa11y users this doesn't cause problems. If it does, and you don't want your builds to fail or need to get them passing quickly, then there are a few options for you:

  - When including Pa11y in your `package.json`, Allow only PATCH level changes using a tilde version range. E.g.

    ```
    "dependencies": {
        "pa11y": "~4.12"
    }
    ```

  - Use an `npm-shrinkwrap.json` or `package-lock.json` which locks Pa11y to a specific version.

  - [Ignore new issue codes](https://github.com/pa11y/pa11y#ignoring) with Pa11y in order to get your builds passing temporarily while you fix the accessibility issue
