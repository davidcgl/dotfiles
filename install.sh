#!/bin/zsh

run() {
  echo "$1"
  eval "$1"
}

ROOT_DIR=$(pwd)
SRC_DIR=dotfiles

# Copy dotfiles to home directory.
for FILE in gitconfig gitignore ignore tmux.conf vimrc zpreztorc zshrc zshrc_common zshrc_home; do
  SRC_FILE=${ROOT_DIR}/${SRC_DIR}/${FILE}
  DST_FILE=${HOME}/.${FILE}
  run "rm -f ${DST_FILE}"
  run "ln -s ${SRC_FILE} ${DST_FILE}"
done

# Copy init.nvim
run "mkdir -p ${HOME}/.config/nvim"
run "rm -f ${HOME}/.config/nvim/init.vim"
run "ln -s ${ROOT_DIR}/${SRC_DIR}/init.vim ${HOME}/.config/nvim/init.vim"

