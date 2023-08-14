# Git

A cheatsheet for basic commands.

## General

```bash
# Initialize
git init
```

```bash
# Add changes to stage
git add [file] # Specific files
git add .      # ., -all, -A
```

```bash
# Do/apply changes
git commit -m <commit-message>
```

```bash
# Others
git rm -r --cached # Clear local repo
git log            # Show commit logs
git log -1         # To show last commit
```

## Branch

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
git checkout -b <new> <src> # Create and switch to branch `new`, a copy of `src`
```

## Remote

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

----

Reference: [Reference (git-scm.com)](https://git-scm.com/docs).
