# How to contribute

You are more than welcome to contribute to this simple project.
Is a good opportunity to practice with git, learn something new and start proficient discussions.

The project contain a list of TODOs in [TODO.md](TODO.md)

## Branching

| Branch name | Description |
| :-- | --- |
| `master` | The stable branch. it is meant to contain merge commits only from `dev` branch                                                                                                                            |
| `dev` | The development branch. It is the target of pull requests. Documentation commits can be performed directly on this branch. It is the target of merge commits from features branches.                      |
| `feature/` | Features can be structured, in a path-fashion, in branches starting with the keyboard `feature` and the path to the feature itself, everything in [snake case](https://it.wikipedia.org/wiki/Snake_case). Example `feature/wsl_support/vsc_server`.|

## Project setup

1. Fork this project in your git profile.
1. Clone your new repository.

### Optional

Add a secondary remote in order to sync with the latest version of `main`.

   ```bash
   git remote add nicola_project git@github.com:NicolaSabino/dotfiles.git
   git fetch nicola_project/main
   git merge nicola_project/main
   ```

You can change a remote URL with `git remote set-url` or see all remote URLs of your project via `git remove -v`.

## Pick a missing feature from TODO

1. Pick one of the missing features.
2. Create a branch from `main`.
3. Commit following the [commit template](#commit-template).
4. Mark as completed the feature in the `README.md` TODO list.
5. Create a pull request to `dev` branch.

## How to propose a new feature

1. Create a branch from `main`.
2. Edit the [TODO.md](TODO.md) file.
3. Commit following the [commit template](#commit-template).
4. Create a pull request to `dev` branch..

## Commit template

Each Commit should follow the following template.
The feature name should be in [snake case](https://it.wikipedia.org/wiki/Snake_case), short and long description are mandatory.
For the long description, markdown syntax *is preferred* but not mandatory.

**Do not forget about the blank line between the short and long description!**

```bash
[my_feature_name] Short change description

Detailed description of the feature:
 * consider to use markdown here
 * `markdown` increase the *read-ability*
 * **markdown** looks amazing )
```
