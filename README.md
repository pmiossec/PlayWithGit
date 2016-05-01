__PlayWithGit__ is a fake repository to test and learn git (on windows).

## Introduction

You will be able to do every git action you want, mess your repository how you want (merge, rebase, ...)
and be able to reset the repository to its initial state just by running a bat script.

## Content of the repository

* `make_or_reset_repo.bat` : Script that create the repository (if it is not already created -- so you could delete the `git` folder --) AND reset the repository to the (nearly, due to how git works) initial state!
* `add_commit.bat` : script to easily add a commit in the current branch
* `add_commit_with_date.bat` : script to easily add a timestamped commit in the current branch
* `clone_repo.bat` : script to clone the repository in another directory (and play with git remotes)
* `GitViz\GitViz.exe` : software to see how the git DAG ( Directed Acyclic Graph ) is modified and understand how git works internally!

