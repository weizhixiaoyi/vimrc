" basic
set history=50
syntax enable
set number
set cursorline
set backspace=2
set autoindent
set tabstop=4
set expandtab " tab -> [space][space][space][space]

set encoding=utf8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,utf-16

" vim map define
inoremap jk <ESC>

" plug managment
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" plugin map define
" NERDTree Setting
map <F2> :NERDTree<CR>
" autocmd vimenter * NERDTree
" autocmd VimEnter * wincmd p
" close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Leaderf Setting
let g:Lf_WindowPosition = 'popup'
nnoremap <Leader>f :Leaderf file<CR>
nnoremap <Leader>F :Leaderf function<CR>
nnoremap <Leader>l :Leaderf line<CR>
nnoremap <Leader>b :Leaderf buffer<CR>
nnoremap <Leader>m :Leaderf mru<CR>
