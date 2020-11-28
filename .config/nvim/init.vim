set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'"

Plugin 'git://git.wincent.com/command-t.git'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'preservim/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
set number
syntax on
set tabstop=4
set autoindent
set cindent
set clipboard=unnamed
set softtabstop=4
set expandtab
set exrc
set secure
set shiftwidth=0
set noexpandtab
set splitbelow
set splitright
" set relativenumber
"#set colorcolumn=
"#highlight ColorColumn ctermbg=darkgray
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
:set mouse=a
"autocmd vimenter * NERDTree
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-u> :u<CR>
nnoremap <S-m> :!g++ -std=c++11 -O2 -Wall "%" -o "%.out"<CR>
nnoremap <S-k> :!./"%.out"<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <S-w> :w<CR>
nnoremap <S-q> :q<CR>
nnoremap <S-tab> :tabnext<CR>
nnoremap <S-z> :NERDTree<CR>
nnoremap <C-A> :%y+<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
let g:ycm_global_ycm_extra_conf = '/home/elt0khy/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
