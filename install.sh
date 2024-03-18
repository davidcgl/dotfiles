#!/bin/zsh

run() {
  echo "$1"
  eval "$1"
}

# Directory of this script.
ROOT_DIR=$(dirname ${0:A})

# Copy dotfiles to home directory.
for FILE in condarc gitconfig gitignore ideavimrc ignore tmux.conf vimrc zpreztorc zshrc zshrc_common zshrc_home; do
  SRC_FILE=${ROOT_DIR}/dotfiles/${FILE}
  DST_FILE=${HOME}/.${FILE}
  run "rm -f ${DST_FILE}"
  run "ln -s ${SRC_FILE} ${DST_FILE}"
done

# Copy scripts to ~/bin.
run "mkdir -p ${HOME}/bin/"
for FILE in sync-docs conda-auto-env; do
  SRC_FILE=${ROOT_DIR}/scripts/${FILE}
  DST_FILE=${HOME}/bin/.${FILE}
  run "rm -f ${DST_FILE}"
  run "ln -s ${SRC_FILE} ${DST_FILE}"
done

# Copy init.nvim
run "mkdir -p ${HOME}/.config/nvim"
run "rm -f ${HOME}/.config/nvim/init.vim"
run "ln -s ${ROOT_DIR}/dotfiles/init.vim ${HOME}/.config/nvim/init.vim"
