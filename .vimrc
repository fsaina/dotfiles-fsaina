" My personal VimRc file -- based uppon:
" http://dougblack.io/words/a-good-vimrc.html

" Pathogen plugin manager
execute pathogen#infect()

" Enable syntax
syntax enable 

" if both turns on filetype detection and allows loading of language specific indentation files based on that detection. For me, this means the python indentation file that lives at ~/.vim/indent/python.vim gets loaded every time I open a *.py filke.
filetype plugin indent on
filetype plugin on

" Color sheme setup https://github.com/raphamorim/lucario#vim
colorscheme lucario

" number of whitespaces to represent a TAB
set tabstop=4

" number of whitespaces to represent TAB while editing
set softtabstop=4

"command turns TAb-s into spaces
set expandtab

"show line numbers
set number

"show command in bottom bar
set showcmd

"set the cursor line
set cursorline

" Autocomplete filenames 
set wildmenu

set lazyredraw

" show the maching pharantesis when on it
set showmatch

set incsearch
set hlsearch

" turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Leader character change from default \ to ,
:let mapleader = ","

" Add ctrl-p extension
set runtimepath^=~/.vim/bundle/ctrlp.vim

" auto strat nerd-tree explorer
" autocmd vimenter * NERDTree
" start nerd-tree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" use ctrl+n keybinding to strat nerd-tree
map <C-n> :NERDTreeToggle<CR>
" if only the nerd tree is open, allow to close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ##############################################
" NERD Commenter   https://github.com/scrooloose/nerdcommenter
" ##############################################

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" ##############################################
" END NERD Commenter   https://github.com/scrooloose/nerdcommenter
" ##############################################



" #############################################
" VUNDLE https://github.com/VundleVim/Vundle.vim#about 
" #############################################

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'



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

" #############################################
" END VUNDLE 
" #############################################

