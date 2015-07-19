#!/bin/zsh

ROOT_DIR=`pwd`
SRC_DIR=dotfiles

# Create symlinks to all dotfiles in this directory.
for FILE in `ls $SRC_DIR`; do
    SRC_FILE=$ROOT_DIR/$SRC_DIR/$FILE
    DST_FILE=$HOME/.$FILE
    if [[ -h $DST_FILE || -e $DST_FILE ]]; then
        rm $DST_FILE
    fi
    CMD="ln -s $SRC_FILE $DST_FILE"
    echo $CMD
    eval $CMD
done
