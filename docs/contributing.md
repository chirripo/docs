# Contributing

Are you interested in contributing to Chirripo? Want to report a bug? Before you do, please read the following guidelines.

## Submission context

### Got a question or problem?

Please [submit an issue](https://github.com/chirripo/chirripo/issues/new) to the [issue tracker](https://github.com/chirripo/chirripo/issues). We will reply back as soon as possible.

### Found a bug?

If you found a bug in the source code, you can help us by [submitting an issue](https://github.com/chirripo/chirripo/issues/new) to the [issue tracker](https://github.com/chirripo/chirripo/issues) in our [GitHub repository](https://github.com/chirripo/chirripo). Even better, you can submit a Pull Request with a fix. However, before doing so, please read the submission guidelines.

### Missing a feature?

You can request a new feature by submitting an issue to our GitHub Repository. If you would like to implement a new feature, please submit an issue with a proposal for your work first, to be sure that it is of use for everyone.

## Submission guidelines

### Submitting an issue

Before you submit an issue, please search the [issue tracker](https://github.com/chirripo/chirripo/issues), maybe an issue for your problem already exists and the discussion might inform you of workarounds readily available.

We want to fix all the issues as soon as possible, but before fixing a bug we need to reproduce and confirm it. In order to reproduce bugs we will systematically ask you to provide a minimal reproduction scenario using the custom issue template. Please stick to the issue template.

Unfortunately we are not able to investigate / fix bugs without a minimal reproduction scenario, so if we don't hear back from you we may close the issue.

### Submitting a Pull Request (PR)

Search GitHub for an open or closed PR that relates to your submission. You don't want to duplicate effort. If you do not find a related issue or PR, go ahead.

1. Development: Fork the project, set up the development environment, make your changes in a separate git branch and add descriptive messages to your commits.

2. Test: Before submitting a pull requests, test all of your changes. To do so, you can add the project to any existing PHP project by using [Composer Path Repository](https://getcomposer.org/doc/05-repositories.md#path) (you can use [TravisCI setup](https://github.com/chirripo/chirripo/blob/master/.travis.yml) as an example). This is a mandatory requirement for your PR to get accepted, as the package should at all times be installable through Packagist.

3. Pull Request: After testing, commit your changes, push your branch to GitHub and send a PR to the right project. If we suggest changes, make the required updates, rebase your branch and push the changes to your GitHub repository, which will automatically update your PR. At all times, please ensure the automated build passes so that a minimal amount of tests are passed for your code.

After your PR is merged, you can safely delete your branch and pull the changes from the main (upstream) repository.
