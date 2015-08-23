" Auto-source vimrc on save
autocmd! bufwritepost .vimrc source %

if has("gui_macvim")
  set background=dark
  colors base16-flat
endif

set nocompatible
filetype plugin indent on 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'L9'
" Plugin 'FuzzyFinder'
" Plugin 'airblade/FuzzyFinder_Textmate'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
" Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Plugin 'bling/vim-airline'
Plugin 'powerline/powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'guns/xterm-color-table.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'unblevable/quick-scope'


call vundle#end()

" Set comma as leader key
let mapleader=","
nnoremap ; :
filetype plugin indent on
syntax on
set showtabline=1
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set hlsearch
set incsearch
set showmatch
set wildmode=list:longest
set relativenumber
set title

set ruler
set laststatus=2
set scrolloff=3

" powerline-status setup
set guioptions-=T
set guioptions-=r
set go-=L
set linespace=1
set showmode
set visualbell
set foldmethod=indent
set foldnestmax=10
set nofoldenable 
set foldlevel=1
set ttimeoutlen=50
set shell=bash\ --login
set backspace=indent,eol,start
set listchars=tab:▸\ ,eol:¬
set ruler
set showcmd
set incsearch
set laststatus=2

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
set cursorline
set ttyfast
set undofile
set ignorecase
set smartcase


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Unmap arrow keys in normal mode
nnoremap <up> :m-2<CR>
nnoremap <down> :m+1<CR>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap j gj
nnoremap k gk

" Tame vim's regex
nnoremap / /\v
vnoremap / /\v

" Clear search
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

" Text wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" Unmap mouse scrolls
"nnoremap <ScrollWheelUp> <nop>
"noremap <S-ScrollWheelUp> <nop>
"nnoremap <C-ScrollWheelUp> <nop>
"nnoremap <ScrollWheelDown> <nop>
"nnoremap <S-ScrollWheelDown> <nop>
"nnoremap <C-ScrollWheelDown> <nop>
"nnoremap <ScrollWheelLeft> <nop>
"nnoremap <S-ScrollWheelLeft> <nop>
"nnoremap <C-ScrollWheelLeft> <nop>
"nnoremap <ScrollWheelRight> <nop>
"nnoremap <S-ScrollWheelRight> <nop>
"nnoremap <C-ScrollWheelRight> <nop>

" Tabbing on normal and visual modes
nnoremap <S-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
inoremap <C-Tab> <ESC>:tabprevious<CR>
vnoremap <S-Tab> :tabnext<CR>
vnoremap <C-S-Tab> :tabprevious<CR>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>m :CommandT<cr>
nnoremap <leader>a :Ack

" Common wraps
inoremap <leader>' ''<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>{ {}<ESC>i
inoremap <leader>[ []<ESC>i
let g:CommandTHighlightColor = "IncSearch"
let g:CommandTMaxHeight = 15 

" Highlight colors 
hi Search ctermfg=0 ctermbg=11 guifg=Black 
hi LineNr ctermfg=242
hi ColorColumn ctermbg=242

" Map backspace to delete line without overwriting pasteboard
nnoremap <BS> "_dd
vnoremap <BS> "_dd
nnoremap <leader><BS> "_d
vnoremap <leader><BS> "_d

" Toggle `set list`
nmap <leader>l :set list!<CR>

" Toggle between relative & absolute file number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set relativenumber!
  else
    set relativenumber
    set number!
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>
" Toggle YouCompleteMe
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap Q !!bash

" Save when vim buffer lose focus
au FocusLost * :wa
