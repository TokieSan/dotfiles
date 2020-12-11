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

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'pineapplegiant/spaceduck'
Plug 'prabirshrestha/vim-lsp'
call plug#end()

" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
"let g:vista_executive_for = {
 " \ 'cpp': 'vim_lsp',
  "\ 'php': 'vim_lsp',
  "\ }


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }


let g:eleline_slim=1


""" START SETS

set number
syntax on
set hidden
set nobackup
set nowritebackup
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
set cmdheight=1
set noshowmode
set laststatus=2
" set spell
" set hlsearch
set updatetime=300
" set relativenumber
"#set colorcolumn=
highlight LineNr ctermfg=lightgreen ctermbg=233

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
:set mouse=a
"autocmd vimenter * NERDTree

autocmd FileType sh command -buffer W write | !./%
autocmd FileType python command -buffer W write | !python %

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
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
nnoremap <S-z> z=

inoremap <C-v> <ESC>"+pa
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
inoremap jj <esc>

vnoremap <C-c> "+y
vnoremap <C-d> "+d
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv


cmap w!! %!sudo tee > /dev/null %

let g:ycm_global_ycm_extra_conf = '/home/elt0khy/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
