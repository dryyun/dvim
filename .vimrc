set number
set showcmd 
set hlsearch
set incsearch
set ignorecase
set winheight=8
set winminheight=5
set nowrap	" 不自动换行
set bs=2                    "在insert模式下用退格键删除

set mouse=a

set clipboard=unnamed " 把vim剪切板中的内容放到系统剪切板, 选中内容 + y 也行

set background=dark
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1

let mapleader = ","

syntax enable

" Start from Vundle https://github.com/VundleVim/Vundle.vim
" Vundle 插件管理

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Plugins

Plugin 'scrooloose/nerdtree' " NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin' " NERDTree git plugin
Plugin 'scrooloose/syntastic' " 语法检查
Plugin 'scrooloose/nerdcommenter' " 
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Valloric/YouCompleteMe'
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
" Vundle 插件管理


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

" For Search

nnoremap <S-f> :CtrlSF<space> 

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers=['php']

noremap <F3> :Autoformat<CR>

