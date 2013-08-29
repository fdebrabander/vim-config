#!/bin/sh

FETCH="curl -Sso "

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
${FETCH} ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/kien/rainbow_parentheses.vim.git
git clone https://github.com/kevinw/pyflakes.git
git clone https://github.com/kevinw/pyflakes-vim.git
git clone https://github.com/jbking/vim-pep8.git
