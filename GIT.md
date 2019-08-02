# Git

Notes.

## Content

[Basic](#Basic)
[Branch](#Branch)
[Using remote](#Using-remote)

## Basic

- `git init`

- `git add .` *__Adds__ `.` (all).*

- `git commit -m "commit message"`

## Branch

- `git branch <branch-name>` *__Creates__.*

- `git checkout <branch-name>` *__Switches to__.*

- `git branch -d <branch-name>` *__Deletes__, `-d` = `--delete` or `-D` to **force** if it's not 'up-to-date'*

- `git branch -a` *__Lists__ `-a` (--all) = `-l` (--list [local]) plus `-r` (**--remote**).*

- `git branch -v` *__Lists__ `-v` (--verbose) [branch, branch id, last commit].*
  - __Or__: `git branch -vv` *[branch, branch id, upstream (if exists), last commit].*

## Using remote

- `git remote add <remote-name> <repo-url>`

- `git remote remove <remote--name>`

- `git remote update <remote-name> --prune` *__Updates__ local list of remote branches.*

- `-u` = `--set-upstream-to` *= **upstream** = remote/branch track. __Use it once__, then it's optional.*

- `git push -u <remote-name> <branch-name>` *__Send__ commited changes to remote and **save/set** that track (remote/branch).*
  - __Then__ just use: `git push`

- `git pull <remote-name> <branch-name>` *__Grab all__ from remote.*
  - __Or__: `git pull` *If `-u` exists.*
  - __Or__: `git pull --allow-unrelated-histories` *If local and remote files __doesn't match__.*

- `git remote show <remote-name>` *Show remote **info**.*

- `git push <remote-name> --delete <branch-name>`
  - __Or__: `git push <remote-name> :<branch-name>`
