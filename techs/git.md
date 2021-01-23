# Git

Quick notes.

## Table of contents

- [Basic](git.md#basic)
- [Branch](git.md#branch)
- [Remote](git.md#remote)

## Basic

- Initialize: `git init`
- Add file changes (untracked, modified and deleted): `git add .` (`.` = all)
- Commit changes: `git commit -m "commit message"`
- Clear local repo: `git rm -r --cached .`

## Branch

- Create branch: `git branch <branch-name>`
- Detele a branch: `git branch -d <branch-name>` (`-d` = `--delete`) or (`-D` to force it)
- List local branches: `git branch -l` (`-l` = `--local`)
- List remote branches: `git branch -r` (`-r` = `--remotes`)
- List all branches: `git branch -a` (`-a` = `--all`)
- List branches with more details: `git branch -v` (`-v` = `--verbose`)
  - To include upstream branch: `git branch -vv`
- Switch to a branch: `git checkout <branch-name>`

## Remote

- Add a remote origin: `git remote add <remote-name> <repo-url>`
- Remove a remote origin: `git remote remove <remote--name>`
- Update local list of remote branches: `git remote update <remote-name> --prune`
- Show remote info `git remote show <remote-name>`
- Send commit changes to remote and set remote/branch track: `git push -u <remote-name> <branch-name>` (`-u` = `--set-upstream-to`, used to set the _upstream_, the remote/branch track. _Use it once_, then it's optional, use only `git push`
- Detele a remote branch: `git push <remote-name> --delete <branch-name>`
  - Or: `git push <remote-name> :<branch-name>`
- Grab all from remote: `git pull <remote-name> <branch-name>`
  - If `-u` is already set, use only `git pull`
  - Or `git pull --allow-unrelated-histories` if local and remote files _doesn't match_
