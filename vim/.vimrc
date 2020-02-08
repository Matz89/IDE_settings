set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'leafgarland/typescript-vim'

let python_highlight_all=1
syntax on

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




"BASE VIM EDITS
set number
colorscheme elflord 
set encoding=utf-8

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"split preference
set splitbelow
set splitright

au FileType python set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

au FileType javascript, html, css
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

au FileType *.ts setfiletype typescript
    \ setlocal syntax
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
