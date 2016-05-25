set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

syntax on
set nobackup
set list
set listchars=tab:>-,trail:.
set noautoindent
set tabstop=4
