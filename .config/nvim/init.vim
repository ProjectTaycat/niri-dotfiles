"
" ProjectTaycat's Neovim Configuration
"

" Vim-plug - Plugin Manager
call plug#begin('~/.config/nvim/plugins')
Plug 'itchyny/vim-gitbranch'
call plug#end()

set nocompatible " Disable compatibility with vi to prevent issues
set wrap " Automatically wrap text that extends beyond window length
set encoding=utf-8 " Encoding
set number " Line Numbers
set cursorline " Highlight the line you are currently in
set ignorecase " Search results are case insensitive
set nobackup " Do not save backup files
syntax on " Syntax highlighting
filetype on " Filetype detection
filetype plugin on " Load plugins for detected filetype
filetype indent on " Load indent file for for detected filetype

" Tab Size
set tabstop=2
set shiftwidth=2
set expandtab

" Terminal Colors
set termguicolors
" Color Scheme
colorscheme catppuccin-mocha

" +++++++++++
" STATUS LINE
" +++++++++++

" :h mode() to see all modes
let g:currentmode={
    \ 'n'      : 'NORMAL',
    \ 'no'     : 'N·OPERATOR PENDING',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'VLINE',
    \ '<C-V>'    : 'V·BLOCK',
    \ 's'      : 'SELECT',
    \ 'S'      : 'S·LINE',
    \ '\<C-S>' : 'S·BLOCK',
    \ 'i'      : 'INSERT',
    \ 'R'      : 'REPLACE',
    \ 'Rv'     : 'V·REPLACE',
    \ 'c'      : 'COMMAND',
    \ 'cv'     : 'VIM EX',
    \ 'ce'     : 'EX',
    \ 'r'      : 'PROMPT',
    \ 'rm'     : 'MORE',
    \ 'r?'     : 'CONFIRM',
    \ '!'      : 'SHELL',
    \ 't'      : 'TERMINAL'
    \}

set laststatus=2 " Show status bar on 2nd to last line

" Left side
set statusline=
set statusline+=%#CurrentMode#
set statusline+=\ %{g:currentmode[mode()]}\ 
set statusline+=%#GitBranch# 
set statusline+=\ %{gitbranch#name()}
set statusline+=%#EverythingElse# 
set statusline+=\ %F\ 
set statusline+=%m\ 
set statusline+=\ 

" Separator
set statusline+=%=

" Right side
set statusline+=\ %R\ %Y\ 
set statusline+=[%{(&fenc!=''?&fenc:&enc)}\,%{&ff}]\ 
set statusline+=%#FilePercent#
set statusline+=\ %p%%\ 
set statusline+=%#FilePosition# 
set statusline+=\ %l:%c\ 

hi CurrentMode guifg=#1e1e2e guibg=#89b4fa gui=BOLD
hi GitBranch guifg=#f5c2e6 guibg=#11111b gui=BOLD
hi EverythingElse guifg=#cdd6f4 guibg=#11111b
hi FilePercent guifg=#89b4fa guibg=#313244
hi FilePosition guifg=#1e1e2e guibg=#89b4fa

