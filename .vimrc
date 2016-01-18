set number
set showcmd 
set hlsearch
set incsearch
set winheight=8
set winminheight=5

set mouse=a

set background=dark
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1

syntax enable

" Start from Vundle https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"""""" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"""""" Plugin 'L9'
" Git plugin not hosted on GitHub
"""""" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"""""" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"""""" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"""""" Plugin 'user/L9', {'name': 'newL9'}

" My Plugins

Plugin 'scrooloose/nerdtree' " NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin' " NERDTree git plugin
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
" My Plugins

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" End from Vundle https://github.com/VundleVim/Vundle.vim

" common configure

" common configure

" For NERDTree

map <F1> :NERDTreeToggle<CR> " F1 打开/关闭
" autocmd vimenter * NERDTree " 开启vim的时候就启动NERDTree
" let NERDTreeShowHidden=1 " 显示隐藏文件
" for nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" For NERDTree

" For airline

let g:airline_theme="luna"
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
set laststatus=2

" For airline
