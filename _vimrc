set nocompatible

call plug#begin('~/vimfiles/bundle')
" Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-bufferline'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'fisadev/vim-isort'

call plug#end()


source $VIMRUNTIME/mswin.vim
behave mswin

" VIM Configuration - Vincent Jousse
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim

" -- Display
set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long

set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)

set guioptions=T          " Enable the toolbar
set guifont=Consolas:h11
" -- Search
set ignorecase            " Ignore case when searching
set smartcase             " If there is an uppercase in your search term
                          " search case sensitive again
set incsearch             " Highlight search results when typing
set hlsearch              " Highlight search results

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set encoding=utf-8

" Use the dark version of Solarized
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")


" Press the j 2 times in a row for ESC
:imap jj <Esc>

" Activate the NERDTree when launching vim
autocmd vimenter * NERDTree

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


let python_highlight_all=1
syntax on

" run python program with f9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" disable preview
set completeopt-=preview


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


au BufNewFile,BufRead *.js,*.html,*.css:
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

augroup vimrc
	autocmd!
augroup end

autocmd vimrc BufWritePost $MYVIMRC source $MYVIMRC
autocmd vimrc VimEnter * set visualbell t_vb=
autocmd vimrc GuiEnter * set visualbell t_vb=

let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''

let g:bufferline_echo=0
let g:bufferline_show_bufnr=0

