set nocompatible
set encoding=utf-8

" Use pathogen for plugin management
execute pathogen#infect()

syntax on
filetype on
filetype plugin on
 
set ruler
set showmode
set nobackup
set noswapfile
set title
set history=200

" Theme configuration - requires the various plugins
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:airline_theme='solarized'
set laststatus=2

" Incremental search while typing
set incsearch
" Highlight search matches
set hlsearch
" Disable search highlights with ,/
nmap <silent> \ :nohlsearch<CR>
 
" Enable mouse
set mouse=a
" Enable paste-mode toggle
set pastetoggle=<F2>

" Copy to from system clipboard, so you can paste between vim sessions
set clipboard=unnamedplus
 
" Briefly highlight matching brackets
set showmatch
 
" Line numbers
set number
set numberwidth=6
 
" Tab width and automatic indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

" Show special characters
set list
set listchars=eol:↵,tab:➥\ ,trail:·,extends:>,precedes:<
highlight NonText ctermfg=grey guifg=#ffffff
highlight SpecialKey ctermfg=grey guifg=#ffffff
 
" C coding
set comments=sl:/**,mb:\ *,elx:\ */
set formatoptions+=rco
set cindent
 
" Automatic line length
set textwidth=79
match ErrorMsg '\%>79v.\+'

" Trailing whitespaces
match ErrorMsg '\s\+$'
 
" More powerful backspace (smart backspace for indentation)
set backspace=indent,eol,start
 
" For space characters as tabs
set expandtab
 
" Autocompletion with <TAB> for the 'command line'
set wildmenu
 
" Rainbow parentheses plugin
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Use file templates for new files
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
 
" Remove trailing spaces when saving a file
autocmd BufWritePre * :%s/\s\+$//e
 
" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Doxygen syntax
let g:load_doxygen_syntax=1

" Save undo history
set undodir=~/.vim/undo
set undofile

" Smarter line joins with 'J' for comments
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif
