#!/bin/zsh
# Run this on new machine to setup global gitconfig.

git config --global user.name 'David Chen'
git config --global user.email 'cgl.david@gmail.com'

git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.showbranch auto
git config --global color.ui true

git config --global core.editor vim
git config --global push.default simple

# Git credentials
# https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage
if [[ "$OSTYPE" == darwin* ]]; then
  git config --global credential.helper osxkeychain
elif [[ "$OSTYPE" == linux* ]]; then
  git config --global credential.helper cache
fi

# Aliases
git config --global alias.st 'status -sb'
git config --global alias.lg 'log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
