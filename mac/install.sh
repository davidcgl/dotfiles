#! /bin/zsh
# Create symlinks to all dotfiles in this directory.

SRC_DIR=`pwd`

for FILE in .*; do
    SRC_FILE=$SRC_DIR/$FILE
    DST_FILE=$HOME/$FILE
    if [[ -f $DST_FILE ]]; then
        rm $DST_FILE
    fi
    ln -s $SRC_FILE $DST_FILE 
    echo 'ln -s' $SRC_FILE $DST_FILE
done
