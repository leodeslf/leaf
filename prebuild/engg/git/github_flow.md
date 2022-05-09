---
layout: default
---
## GitHub Flow

A *branching model* made by the GitHub team.

### Branches

Branch name|Description|Branch off from|Merge back to
---|---|---|---
`master`|Main production branch.|`none`|`none`
`<branch-name>`|New feature/change branch.|`master`|`master`

### Notes

Common steps in GitHub Flow to add a new feature/change:

1. *Branch off* of `master`.
1. Make *commits* locally, and regularly push them to the remote repo.
1. When ready to deploy (or asking for feedback), open a *pull request*.
1. Once it is reviewed, *merge* it into `master`, then *push* changes.
1. At this point *deploy* (if not already done by CI/CD).
1. Finally *delete* the new branch as it's no longer needed.

### The Seven Rules of a Good Commit Message

1. Separate subject from body with a blank line.
1. Limit the subject lite to 50 characters.
1. Capitalize the subject line.
1. Do not end the subject line with period.
1. Use the imperative mood in the subject line.
1. Wrap the body at 72 characters.
1. Use the body to explain *what* and *why* (not how).

----

Reference:

- [GitHub Flow (docs.github.com)](https://docs.github.com/en/get-started/quickstart/github-flow).
- [GitHub Flow (githubflow.github.io)](https://githubflow.github.io/).
