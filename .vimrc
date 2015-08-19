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
Plugin 'FuzzyFinder'
Plugin 'airblade/FuzzyFinder_Textmate'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

let mapleader=","
filetype plugin indent on
syntax on
set showtabline=2
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set hlsearch
set incsearch
set wildmode=list:longest
set number
set title
nohl

" map <leader>f :FuzzyFinderTextMate<Enter>
map <leader>n :NERDTreeToggle<cr>
map <leader>m :CommandT<cr>
set ruler
set laststatus=2
set scrolloff=3

" powerline-status setup
set guioptions-=T
set guioptions-=r
"hi Search ctermfg=0 ctermbg=11 guifg=Black 
" hi LineNr ctermfg=238
set go-=L
set linespace=12
set showmode
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set visualbell
set foldmethod=indent
set foldnestmax=10
set nofoldenable 
set foldlevel=1
set ttimeoutlen=50
set shell=bash\ --login

" Unmap arrow keys in normal mode
nnoremap <up> :m-2<CR>
nnoremap <down> :m+1<CR>
nnoremap <left> <Nop>
nnoremap <right> <Nop>

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

" Common wraps
inoremap <leader>' ''<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>{ {}<ESC>i
inoremap <leader>[ []<ESC>i
let g:CommandTHighlightColor = "IncSearch"
let g:CommandTMaxHeight = 15 

" Map backspace to delete line without overwriting pasteboard
nnoremap <BS> "_dd
vnoremap <BS> "_dd

" Toggle `set list`
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Toggle between relative & absolute file number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>
