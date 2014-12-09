call pathogen#infect()
syntax enable
filetype plugin indent on

set t_Co=256
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:winManagerWindowLayout="FileExplorer|TagList"
nmap wm :WMToggle<cr>

set number
set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set noerrorbells
set showmatch
set matchtime=2
set smartindent
set autoindent
set laststatus=2

"Multi
if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk

    if v:lang =~? "^\(zh\)\|\(ja\)\|\(ko\)"
        set ambiwidth=double
    endif

    if has("win32")
        source VIMRUNTIME/delmenu.vimsourceVIMRUNTIME/menu.vim
        language message zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
    au! BufRead,BufNewFile *.as    setfiletype actionscript
augroup end
