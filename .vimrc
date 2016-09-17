set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

syntax enable

set encoding=utf-8
set autoindent
set nobackup
set list
set listchars=tab:>-,trail:.
set noautoindent
set tabstop=4
