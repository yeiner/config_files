" VIM Configuration File
" Author: Yeiner Morales <yeiner.morales@gmail.com>

colorscheme monokai

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set encoding=utf-8

set tabstop=4 						"Establece en 4 espacios un tabulador
set shiftwidth=4 					"Establece en 4 espacios la autoindentación
set number 							"Muestra los números de linea

"" Indetation
set smartindent             		" use intelligent indentation for C/C++
set autoindent              		" use indentation of previous line
set copyindent              		" copy the previous indentation on autoindenting

"" Syntax
set t_Co=256                          " turn syntax highlighting on
syntax on
set number                            " turn line numbers on
set showmatch                         " highlight matching braces
set comments=sl:/*,mb:\ *,elx:\ */    " intelligent comments

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
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/vim-easy-align'

""C++
Plugin 'c.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"End Config Vundle

"Sintaxis

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1

""Config aditional Ident Guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237
