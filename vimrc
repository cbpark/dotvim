" Make vim behave in a more useful way.
set nocompatible

" Vundle {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'jiangmiao/auto-pairs'
" Plugin 'kien/ctrlp.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'godlygeek/tabular'
" Plugin 'bling/vim-airline'
" let g:airline_powerline_fonts = 0
" Plugin 'tpope/vim-commentary'
" Plugin 'dag/vim2hs'

call vundle#end()
filetype plugin indent on
" }}}

" Switch syntax highlighting on
syntax on

" Disable backups.
set nobackup
set nowritebackup
set noswapfile

" Show the line and column number of the cursor position
set ruler

" Show command in the last line of the screen
set showcmd

" Incremental searching
set incsearch
set hlsearch

" Ignore the case sensitivity of the pattern
set ignorecase
set smartcase

" Remove all trailing white space
autocmd BufWritePre * :%s/\s\+$//e

" Tab settings
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

" Turn on line numbers
" set number

" Always show status bar
set laststatus=2

" Set the status line
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Set encoding
set encoding=utf-8

" Spell checking
setlocal spell spelllang=en_us
set complete+=kspell

"  Automatically read the file when detected to be changed outside
set autoread

" Turn off the introductory message
set shortmess+=I

" When a bracket is inserted, briefly jump to the matching one.
set showmatch

" Set comment strings
autocmd FileType scheme set commentstring=;;\ %s

" Set keys
imap jk <Esc>
map <C-n> :NERDTreeToggle<CR>

" Theme
" set background=dark
" colorscheme base16-default-dark
