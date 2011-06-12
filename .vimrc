set nocompatible
filetype off
" Intuitive backspacing in insert mode
set backspace=indent,eol,start


set rtp+=~/.vim/vundle.git
call vundle#rc()
Bundle 'ervandew/supertab'	
"Git integration
Bundle 'tpope/vim-fugitive'
"Nice motion using \f
Bundle 'Lokaltog/vim-easymotion'
"General library used by other plugins
Bundle 'L9'
"Nice plugin for quick opening files/buffers etc    
"Bundle 'FuzzyFinder'
"Bundle 'git://git.wincent.com/command-t.git'
"Snipmate - snippets from textmate
Bundle 'msanders/snipmate.vim'
"File tree
Bundle 'scrooloose/nerdtree'
"Bundle 'corntrace/bufexplorer'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/TaskList.vim'
"Bundle 'gotcha/vimpdb'
"Indexes projects in backgroun
Bundle 'vim-scripts/indexer.tar.gz'
"Nice window with tags for current module (methods/variables). Use F4 to
"toggle
Bundle 'majutsushi/tagbar'
"Refactoring/find usages for python
Bundle 'jperras/ropevim'
"Automatic syntax checking
"Bundle 'scrooloose/syntastic'
"Alternate checker for python
Bundle 'kevinw/pyflakes-vim.git'
"Nice theme
Bundle 'vim-scripts/Solarized'
"Python debug
Bundle 'jabapyth/vim-debug'
"GUndo - undo tree visualizer
Bundle 'sjl/gundo.vim.git'
Bundle 'vim-scripts/shell.vim--Odding'
filetype plugin indent on
syntax on
"highlight all matches
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
set expandtab
set smarttab
set textwidth=0
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"Line numbers
set number
set statusline=%<%f\ " Filename
set statusline+=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{getcwd()}] " current dir
"set statusline+=%([%{Tlist_Get_Tagname_By_Line()}]%)
"Turn on if using syntastic
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info

let g:SuperTabDefaultCompletionType = "context"
au FileType python set omnifunc=pythoncomplete#Complete
"set completeopt=menuone,longest,preview
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.git', '\.hg', '\.svn', '\.bzr']
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 
let python_highlight_all=1
"vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

set tags=./tags;/,~/.vimtags
set nobackup
set noswapfile
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
let g:ropevim_vim_completion=1
let g:ropevim_extended_complete=1
let g:ropevim_autoimport_modules = ["os", "random"]
let g:ropevim_guess_project=1

let g:syntastic_enable_signs=1
nmap ,T <Plug>TaskList
nmap ,c :tabclose<CR>
nmap ,t :tabnew<CR>
map <S-F9> :w<CR>:!/usr/bin/env python % <CR>
map <F2> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <F3> :FufBuffer<CR>
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
"nmap <C-A-Right> :tabnext<CR>
"noremap <C-A-Left>  :tabprev<CR>
nmap ,n :tabnext<CR>
noremap ,p :tabprev<CR>
nmap  <C-n> :FufCoverageFile<CR>nmap ,n :tabnext<CR>
noremap ,p :tabprev<CR>
nmap <C-l> :FufChangeList<CR>
let g:fuf_keyOpenTabpage='T'
let g:fuf_keyOpenSplit='S'
let g:fuf_keyOpenVsplit='V'
let g:tagbar_compact = 1
imap <F6> <ESC>:RopeShowDoc<CR>
"map <C-o> :RopeOpenProject<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nnoremap  <F5> :GundoToggle<CR>
map <leader>r :RopeRename<CR>
colorscheme grayorange
map <C-n> :RopeFindFile<CR>
