#!/bin/sh

FETCH="curl -Sso "

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
${FETCH} ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
