---
layout: default
---
## Git Flow

A *branching model* introduced by Vincent Driessen in 2010.

### Branches

Branch name|Description|Branch off from|Merge back to
---|---|---|---
`master`|Main production branch.|`none`|`none`
`develop`|Main development branch.|`master`|`release-*`
`feature-*`|New features branch.|`develop`, `feature-*`|`develop`
`release-*`|New release branch.| `develop`|`master`, `develop`
`hotfix-*`|Hotfixes branch.|`master`|`master`, `develop`

#### Notes

- Branch `develop` is created from the very first commit of `master`.
- Only `release-*` should merge back into `master`. The exception to that is `hotfix-*`.
- Hotfixes from a `release-*` branch may be continuously merged back into `develop`, until the complete release is finished, then merged to `master`.

----

Reference: [A successful Git branching model (nvie.com)](https://nvie.com/posts/a-successful-git-branching-model/).
