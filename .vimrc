set nocompatible

syntax on
filetype on
filetype plugin on
 
set ruler
set showmode
set nobackup
set noswapfile
set title
set history=200

" Use pathogen for plugin management
execute pathogen#infect()

" Incremental search while typing
set incsearch
" Highlight search matches
set hlsearch
" Disable search highlights with ,/
nmap <silent> \ :nohlsearch<CR>
 
set background=dark
 
" Enable mouse
set mouse=a
" Enable paste-mode toggle
set pastetoggle=<F2>
 
" Briefly highlight matching brackets
set showmatch
 
" Line numbers
set nu
 
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
 
" More powerful backspace (smart backspace for indentation)
set backspace=indent,eol,start
 
" For space characters as tabs
set expandtab
 
" Custom statusbar
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
 
" Autocompletion with <TAB> for the 'command line'
set wildmenu
 
" Autocompletion for editing
set ofu=syntaxcomplete#Complete
 
" Use file templates for new files
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
 
" Remove trailing spaces when saving a file
autocmd BufWritePre * :%s/\s\+$//e
 
" Sudo to write
cmap w!! w !sudo tee % >/dev/null
