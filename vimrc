let g:gruvbox_contrast_dark='hard'
set cursorline
colorscheme peaksea
set background=dark
set t_Co=256
set synmaxcol=2048

""f-key bindings
"":set clipboard^=unnamed
:nmap <F1> <nop>

"f5 to execute
nnoremap <silent> <F5> :!python %<CR>

""indent file according to format
map <F7> mzgg=G`z

""tagbar config
""map to F8
nmap <F8> :TagbarToggle<CR>
""yank text to clipboard

set pastetoggle=<F10>

""Turn off arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <F3> :set invnumber<CR>
" new tab ctrl-t
:nmap <c-t> :tabe<CR>

""NERDTREE F2 to open and close
map <F2> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"" Clear whitespace
map <F12> :%s/\s\+$//e<CR>
:set clipboard=unnamedplus

" ctrl-s to save
:nmap <c-S> :w<CR>

" ctrl-q to quit without saving
silent !stty -ixon > /dev/null 2>/dev/null
map <C-Q> :q!<CR>
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<C-a>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""Remove --Insert--
set noshowmode

""Clock config
let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1000

""Numbers always on
:set number

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')    " Use a shared folder instead of ~/.vimrc/bundle
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
Plugin 'enricobacis/vim-airline-clock'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required
let g:AutoClosePreserveDotReg = 0
"""" END Vundle Configuration
