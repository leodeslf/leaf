# Git

## Branching Models

### Git Flow

A *branching model* introduced by Vincent Driessen in 2010.

#### Branching in Git Flow

Branch name|Description|Branch off from|Merge back to
---|---|---|---
`master`|Main production branch.|`none`|`none`
`develop`|Main development branch.|`master`|`release-*`
`feature-*`|New features branch.|`develop`, `feature-*`|`develop`
`release-*`|New release branch.| `develop`|`master`, `develop`
`hotfix-*`|Hotfixes branch.|`master`|`master`, `develop`

Notes:

- Branch `develop` is created from the very first commit of `master`.
- Only `release-*` should merge back into `master`. The exception to that is `hotfix-*`.
- Hotfixes from a `release-*` branch may be continuously merged back into `develop`, until the complete release is finished, then merged to `master`.

### GitHub Flow

A *branching model* made by the GitHub team.

#### Branching in GitHub Flow

Branch name|Description|Branch off from|Merge back to
---|---|---|---
`master`|Main production branch.|`none`|`none`
`<branch-name>`|New feature/change branch.|`master`|`master`

Common steps in GitHub Flow to add a new feature/change:

1. *Branch off* of `master`.
1. Make *commits* locally, and regularly push them to the remote repo.
1. When ready to deploy (or asking for feedback), open a *pull request*.
1. Once it is reviewed, *merge* it into `master`, then *push* changes.
1. At this point *deploy* (if not already done by CI/CD).
1. Finally *delete* the new branch as it's no longer needed.

## The Seven Rules of a Good Commit Message

1. Separate subject from body with a blank line.
1. Limit the subject lite to 50 characters.
1. Capitalize the subject line.
1. Do not end the subject line with period.
1. Use the imperative mood in the subject line.
1. Wrap the body at 72 characters.
1. Use the body to explain *what* and *why* (not how).

## Git Cheatsheet

A cheatsheet for basic commands.

### General

```bash
# Initialize
git init
```

```bash
# Add changes to stage
git add [file]    # Specific files
git add .         # ., -all, -A
git add -p [file] # Asks whether to commit or not by change hunk/block
```

```bash
# Do/apply changes
git commit -m <message>
git commit -am <message>        # Automatic to `git add .` before committing
git commit --amend -m <message> # Update last commit message
git commit --amend --no-edit    # To add files to the last commit
```

```bash
# Undo/modify changes
git reset --soft HEAD^     # Undo last commit (without altering modified files)
git restore --sated <file> # Unstage file (reverse `git add`)
```

```bash
# Others
git clone <repo-url> # Get a local copy of repo
git rm -r --cached   # Clear local repo
git log              # Show commit logs
git log -1           # Show the last (-1) commit
git log --oneline    # Show a log per line
git status           # Show repo's status
git diff <file>      # Show file's changes
```

```bash
git tag                          # List tags
git tag <pattern>                # List only matching tags
git tag -a <tag-id> -m <message> # Create an annotated tag
git show <tag-id>                # Show tag data and commit
```

### Branch

```bash
git branch <branch-name>    # Create branch
git branch -d <branch-name> # -d, --delete (-D to force)
```

```bash
# List branches
git branch -a # -a, --all
git branch -l # -l, --local
git branch -r # -r, --remote
git branch -v # -v, --verbose (-vv to include upstream)
```

```bash
git checkout <branch-name>  # Switch to a branch
git checkout -b <new> <src?> # Create & switch to a new branch based on another
```

### Remote

```bash
git remote add <remote-name> <repo-url>
git remote remove <remote-name>
git remote update <remote-name> --prune # Update remote branches' list
git remote show <remote-name>           # Show remote info
```

```bash
# Send changes
git push
git push -u <remote-name> <branch-name>       # -u, --set-upstream-to
git push <remote-name> --delete <branch-name> # Delete a branch
git push <remote-name> :<branch-name>         # Delete a branch, alternative
```

```bash
# Grab all
git pull
git pull <remote-name> <branch-name> # If -u wasn't set before
git pull --allow-unrelated-histories # If repos doesn't match (local/remote)
```

### Merge

```bash
# Merge changes from a source branch into another/current branch
git merge <src-branch-name> <target-branch-name?>
```

---

Reference:

- [A successful Git branching model (nvie.com)](https://nvie.com/posts/a-successful-git-branching-model/).
- [Reference (git-scm.com)](https://git-scm.com/docs).
- [GitHub Flow (docs.github.com)](https://docs.github.com/en/get-started/quickstart/github-flow).
- [GitHub Flow (githubflow.github.io)](https://githubflow.github.io/).

<!-- TODO (update, expand) -->

<!-- 
Git Branching Strategies Explained, reminder at: https://www.linkedin.com/posts/nikkisiapno_git-branching-strategies-explained-a-well-planned-activity-7119985969348448256--Kgo/
 -->
