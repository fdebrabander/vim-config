#!/bin/sh

FETCH="curl -LSso "

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
${FETCH} ~/.vim/autoload/pathogen.vim \
    https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim

cd ~/.vim/bundle

# Show matching parentheses
git clone https://github.com/kien/rainbow_parentheses.vim.git

# Python syntax chekers
git clone https://github.com/kevinw/pyflakes.git
git clone https://github.com/kevinw/pyflakes-vim.git
git clone https://github.com/jbking/vim-pep8.git

# Git tools
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/tpope/vim-fugitive.git

# Status line
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git

# VIM color theme
git clone https://github.com/altercation/vim-colors-solarized.git
