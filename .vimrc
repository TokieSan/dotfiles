set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'"
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'preservim/nerdtree'
Plugin 'SirVer/ultisnips'
call vundle#end()           

filetype plugin indent on   

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'pineapplegiant/spaceduck'
Plug 'prabirshrestha/vim-lsp'
Plug 'HugoNikanor/vim-breakpoint'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:livepreview_previewer = 'evince'
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
      \             [  'gitbranch', 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction',
	  \		'gitbranch': 'FugitiveHead'
      \ },
      \ }


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
set cmdheight=2
set noshowmode
set laststatus=2
" set spell
" set hlsearch
set updatetime=300
" set relativenumber
"#set colorcolumn=
highlight LineNr ctermfg=lightgreen ctermbg=233

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
set mouse=a

autocmd FileType sh command -buffer W write | !./%
autocmd FileType python command -buffer W write | !python %
autocmd FileType tex,texmath command -buffer W write | !pdflatex -jobname=% % 
autocmd FileType cpp,h command -buffer W write | !g++ -std=c++11 -O2 -Wall "%" -o "%.out"

autocmd FileType cpp,h command -buffer M write | !./"%.out"
autocmd FileType tex,texmath command -buffer M write | LLPStartPreview

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-u> :u<CR>
nnoremap <S-m> :W<CR>
nnoremap <S-k> :M<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <S-w> :w<CR>
nnoremap <S-q> :q<CR>
nnoremap <S-tab> :tabnext<CR>
nnoremap <S-z> :NERDTree<CR>
nnoremap <C-A> :%y+<CR>
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
nnoremap <S-z> z=
nnoremap <S-p> :BreakpointToggle<CR>

inoremap <C-v> <ESC>"+pa
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
inoremap jj <esc>
inoremap .=<tab> •
inoremap :"D<tab> 😂
inoremap <3<tab> ♥
inoremap _midf<tab> 🖕
inoremap _nice<tab> 👌

vnoremap <C-c> "+y
vnoremap <C-d> "+d
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
 
cmap w!! %!sudo tee > /dev/null %

let g:ycm_global_ycm_extra_conf = '/home/elt0khy/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
