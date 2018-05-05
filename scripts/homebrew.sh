#!/bin/zsh

# Install homebrew in ~/homebrew

cd $HOME
mkdir homebrew || exit 1;
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

echo "Done! Make sure to have these paths in bashrc/zshrc"
echo '  export PATH=$HOME/homebrew/bin:$PATH'
echo '  export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH'
