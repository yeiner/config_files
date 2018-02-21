" VIM Configuration File
" Author: Yeiner Morales <yeiner.morales@gmail.com>

"Cofiguración Vundle

set nocompatible            " be iMproved, required
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File Plugins
Plugin 'mileszs/ack.vim'

"Panel Lateral
Plugin 'scrooloose/nerdtree'

"Buscar archivos Ctrl + P
Plugin 'kien/ctrlp.vim'

"Barra de estado
Plugin 'vim-airline/vim-airline'

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Plugin para comentarios
Plugin 'scrooloose/nerdcommenter'

 "Plugins Javascript 
Plugin 'heavenshell/vim-jsdoc'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
"Json 
Plugin 'elzr/vim-json'

"Html
Plugin 'othree/html5.vim'
"Php
Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'sumpygump/php-documentor-vim'
Plugin 'spf13/PIV'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'vim-php/vim-php-refactoring'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'tomphp/vim-phpdoc'
Plugin 'mikehaertl/pdv-standalone'
Plugin 'Shougo/unite.vim'
Plugin 'docteurklein/php-getter-setter.vim'

Plugin 'majutsushi/tagbar'
Plugin 'yggdroot/indentline'

Plugin 'valloric/youcompleteme'

Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/vim-easy-align'

Plugin 'tpope/vim-surround'
""C++
Plugin 'c.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"End Config Vundle


"Configuracion Yeiner 
set number
syntax on
" Para aplicar una sangría de dos espacios (en lugar de una ficha de ocho
" espacios)
set shiftwidth=4
"Espacios de tabulación
set tabstop=4
"Indentacion Automatica
set autoindent
" Automáticamente llaves guión (c/c++,Java,JavaScript):
set cindent
" Para mantener vim de la conversión de ocho espacios en pestañas
set expandtab
"Barra de estado todo el tiempo airline 
set laststatus=2
"Change realtime files
set updatetime=250
"Directorio actual.
set autochdir
"Themes 
colorscheme monokai

set tags=./tags;
"Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:used_javascript_libs = 'jquery'
"Go to definition
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nmap <F8> :TagbarToggle<CR>
"Mover linea abajo o arriba 
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
"End Config Yeiner
"Php

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
      hi! def link phpDocTags  phpDefine
        hi! def link phpDocParam phpType
    endfunction

    augroup phpSyntaxOverride
          autocmd!
            autocmd FileType php call PhpSyntaxOverride()
        augroup END
