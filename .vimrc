set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
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

call vundle#end()


filetype plugin indent on
" set nu
syntax on
" set showtabline=2
" execute pathogen#infect()
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
" set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set hlsearch
set incsearch
set wildmode=list:longest

set title

map <leader>t :FuzzyFinderTextMate<Enter>
set ruler
set laststatus=2
set scrolloff=3
