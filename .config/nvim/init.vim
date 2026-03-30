" Set compatibility to Vim only
set nocompatible

" Automatically wrap text that extends beyond window length
set wrap

" Encoding
set encoding=utf-8

" Syntax Highlighting
filetype plugin on
syntax on

" Line Numbers
set number

" Tab Size
set tabstop=2
set shiftwidth=2
set expandtab

" Statusbar
set laststatus=2 " Show status on last line

" Terminal Colors
set termguicolors

" Vim-plug
call plug#begin('~/.config/nvim/plugins')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

" Color Scheme
colorscheme catppuccin-mocha
