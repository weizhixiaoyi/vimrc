" basic
set history=50
syntax enable
syntax on
set number
set autoindent
set cursorline
set tabstop=4
set expandtab " tab -> [space][space][space][space]

set encoding=utf8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,utf-16

" vim map define
noremap <Up> <Nop>
inoremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Down> <Nop>
noremap <Left> <Nop>
inoremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Right> <Nop>
inoremap jk <ESC>

" plug managment
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

" plugin map define
map <F2> :NERDTree<CR>
