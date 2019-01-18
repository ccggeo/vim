let g:gruvbox_contrast_dark='hard'
colorscheme peaksea
set background=dark
set t_Co=256
set synmaxcol=2048
"":set clipboard^=unnamed
:nmap <F1> <nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"f5 to execute
nnoremap <silent> <F5> :!python %<CR>
" ctrl-s to save 
:nmap <c-s> :w<CR>
" ctrl-q to quit without saving 
:nmap <c-q> :q!<CR>
set pastetoggle=<F10>

" new tab ctrl-t
:nmap <c-t> :tabe<CR>

""NERDTREE F2 to open and close
map <F2> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1000
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

""tagbar config
""map to F8
nmap <F8> :TagbarToggle<CR>
map <F7> mzgg=G`z

set nocompatible              
filetype off                  
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin('/etc/vim/bundle')    " Use a shared folder instead of ~/.vimrc/bundle
set visualbell

Plugin 'w0rp/ale'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gmarik/vundle'
Plugin 'Buffergator'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'
Plugin 'sheerun/vim-polyglot'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Bundle 'vim-ruby/vim-ruby'
Plugin 'tomlion/vim-solidity'
Bundle 'myusuf3/numbers.vim'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required
let g:AutoClosePreserveDotReg = 0
"""" END Vundle Configuration 
