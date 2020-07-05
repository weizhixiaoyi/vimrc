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
inoremap jk <ESC>

" plug managment
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
 Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
call plug#end()

" plugin map define
" NERDTree Setting
map <F2> :NERDTree<CR>
" autocmd vimenter * NERDTree
" autocmd VimEnter * wincmd p
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Leaderf Setting
let g:Lf_WindowPosition = 'right'
nnoremap <Leader>f :Leaderf file<CR>
nnoremap <Leader>F :Leaderf function<CR>
nnoremap <Leader>l :Leaderf line<CR>
nnoremap <Leader>b :Leaderf buffer<CR>
nnoremap <Leader>m :Leaderf mru<CR>
