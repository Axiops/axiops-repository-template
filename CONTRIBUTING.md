# Contributing to Axiops

First off, thank you for considering contributing! It's people like you that make Axiops such a great tool.

This document provides guidelines for contributing to the project.

## Code of Conduct

This project and everyone participating in it is governed by the [Axiops Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How Can I Contribute?

### Reporting Bugs

- Ensure the bug was not already reported by searching on GitHub under [Issues](https://github.com/Axiops/{{.PROJECT_NAME}}/issues).
- If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/Axiops/{{.PROJECT_NAME}}/issues/new). Be sure to include a **title and clear description**, as much relevant information as possible, and a **code sample** or an **executable test case** demonstrating the expected behavior that is not occurring.

### Suggesting Enhancements

- Open a new issue with the "enhancement" label.
- Clearly describe the enhancement and the motivation for it.

### Pull Requests

1.  Fork the repo and create your branch from `main`.
2.  If you've added code that should be tested, add tests.
3.  If you've changed APIs, update the documentation.
4.  Ensure the test suite passes (`task test`).
5.  Make sure your code lints (`task lint`).
6.  Issue that pull request!

## Development Setup

1.  Clone the repository.
2.  Install Go (see `go.mod` for required version).
3.  Install `task` and `pre-commit`.
4.  Run `task tidy` to install dependencies.
5.  Run `task install-hooks` to set up the git hooks.

## Commit Message Guidelines

We adhere to the [Conventional Commits](https://www.conventionalcommits.org/) specification. `commitlint` is installed as a pre-commit hook to enforce this.

Examples:
- `feat(api): add new endpoint for workspaces`
- `fix(storage): correct query for SQLite compatibility`
- `docs(readme): update getting started guide`
- `chore(deps): upgrade golangci-lint to v1.55`
