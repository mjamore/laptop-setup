#!/usr/bin/env bash

# Set git configuration
git config --global user.name "Michael Amore"
git config --global user.email "michael.amore@yahoo.com"
git config --global core.editor "code --wait"

# faster git server communication.
# like a LOT faster. https://opensource.googleblog.com/2018/05/introducing-git-protocol-version-2.html
git config protocol.version 2

# autocompletion for git branch names https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash