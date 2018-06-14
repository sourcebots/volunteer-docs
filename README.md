# SourceBots Volunteer Documentation

[![CircleCI](https://circleci.com/gh/sourcebots/volunteer-docs.svg?style=svg)](https://circleci.com/gh/sourcebots/volunteer-docs)

URL: https://volunteering.sourcebots.co.uk

## Requirements
- [Hugo](https://gohugo.io) (>=0.40)
- [NodeJS](https://nodejs.org/) (>=8) (required for tests only)

## Local Setup
1. `npm install`
2. `git submodule update --init`
3. `./scripts/build.sh`

The site will be output to `public/`.


## Dev server
`./scripts/server.sh` will start a server on http://localhost:1313.

## Tests
Running tests locally is optional, as theyre automatically run by the CI in PRs.

Currently, the only test run is a spell-checker.

## Style notes

Since our pages can almost all be accessed both with and without a trailing
slash, we prefer all our links to be root-relative (i.e: `/foo/bar`) rather
than parent-relative (i.e: `../bar`).
