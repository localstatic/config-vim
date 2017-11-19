#!/bin/sh

cd "$( dirname "${BASH_SOURCE[0]}" )"
dir=`pwd`

# Set up submodules
git submodule init
git submodule update

# Symlink vimrc & vim into your home directory (i.e. ~/.vimrc and ~/.vim)
cd
ln -s $dir/vimrc .vimrc
ln -s $dir/vim .vim

# Install plugins
echo
echo "run `:call dein#install()` from Vim to install plugins."

#
echo
echo "(optional) Install the Hack font for increased awesomeness."
echo "  http://sourcefoundry.org/hack/"
