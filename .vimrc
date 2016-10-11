set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'tmhedberg/matchit'
Plugin 'itchyny/lightline.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

syntax enable

"charset
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

"tab/indent
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

"cursor
set whichwrap=b,s,h,l,<,>,[,],~
set cursorline
set showmatch

"command
set wildmenu
set history=50

"paste
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"lightline.vim
set laststatus=2
set showmode
set showcmd
set ruler
