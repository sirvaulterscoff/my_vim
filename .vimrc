set nocompatible
filetype off
" Intuitive backspacing in insert mode
set backspace=indent,eol,start


set rtp+=~/.vim/vundle.git
call vundle#rc()
Bundle 'ervandew/supertab'	
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'corntrace/bufexplorer'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'gotcha/vimpdb'
Bundle 'vim-scripts/indexer.tar.gz'
Bundle 'majutsushi/tagbar'
filetype plugin indent on
syntax on
set hlsearch
set incsearch 

set hidden
set history=100
set wildmenu
set scrolloff=3
set ruler
set showmode  
set showcmd " show partial commands in status line and
set showmatch
"set expandtab
set textwidth=0
set nowrap
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set statusline=%<%f\ " Filename
set statusline+=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=%([%{Tlist_Get_Tagname_By_Line()}]%)
set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.git', '\.hg', '\.svn', '\.bzr']
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 


set tags=./tags;/,~/.vimtags

let g:easytags_cmd = 'ctags'

let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1

let g:ctags_statusline=1
set laststatus=2
let Tlist_Process_File_Always=1
set showtabline=2

nmap ,T <Plug>TaskList
nmap ,c :tabclose<CR>
nmap ,t :tabnew<CR>
map <S-F9> :w<CR>:!/usr/bin/env python % <CR>
map <F2> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <F3> :FufBuffer<CR>
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
map <C-A-Right> :tabnext<CR>
map <C-A-Left>  :tabprev<CR>
map <C-n> :FufCoverageFile<CR>
map <C-l> :FufChangeList<CR>
let g:fuf_keyOpenTabpage='T'
let g:fuf_keyOpenSplit='S'
let g:fuf_keyOpenVsplit='V'
