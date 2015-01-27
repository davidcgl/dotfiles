#!/bin/zsh

SRC_DIR=`pwd`
FILES=(.zshrc .vimrc .gitconfig .tmux.conf)

# Create symlinks to all dotfiles in this directory.
for FILE in ${FILES[*]}; do
    SRC_FILE=$SRC_DIR/$FILE
    DST_FILE=$HOME/$FILE
    if [[ -h $DST_FILE || -e $DST_FILE ]]; then
        rm $DST_FILE
    fi
    CMD="ln -s $SRC_FILE $DST_FILE"
    echo $CMD
    eval $CMD
done
