#!/bin/zsh

if [[ -d ~/.vim ]]; then
    echo "=== Removing ~/.vim ==="
    rm -rf ~/.vim
fi

BUNDLE_DIR="${HOME}/.vim/bundle"

echo "=== Installing pathogen ==="
mkdir -p ~/.vim/autoload $BUNDLE_DIR && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "=== Installing syntastic ==="
git clone https://github.com/scrooloose/syntastic.git $BUNDLE_DIR/syntastic

echo "=== Installing solarized ==="
git clone git://github.com/altercation/vim-colors-solarized.git $BUNDLE_DIR/vim-colors-solarized
