" required by Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins on GitHub repos
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'msanders/snipmate.vim'

" All of vim Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color scheme settings
colorscheme molokai
let g:molokai_original = 0

" airline settings
set encoding=utf-8
let g:airline_powerline_fonts = 1
set t_Co=256
set laststatus=2

" Nerd tree options
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " if now file specified open Nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Close vim if the only window left is NERDTree
let g:NERDTreeIgnore = [
      \ '\~$',
      \ '\.o$',
      \ '\.hi$',
      \ '\.pyc',
      \ '\.swp'
      \ ] " dont show listed files

" disable backups
set nobackup
set noswapfile
set nowritebackup

" commands
command W w !sudo tee > /dev/null %

" key combination maps
map <C-o> :NERDTreeToggle<CR>

" search options
set hlsearch " highlight search hits
set incsearch " highlights search hits dinamicly

" editor layout
set nowrap " don't mess the lines 
set number " number lines
set ruler " display line/column bottom right
set cursorline " highlight line
set title " shows the name of the file as title
set wildmenu " shows tab completion in menu
set scrolloff=5 " starts scrolling 5 lines before top and bottom
set showcmd " Show (partial) command in status line.
syntax on " color syntax

"
"
" add bracket handling
"
"

" tab settings

"set tabstop=4
"set expandtab
"set shiftwidth=4
"filetype indent on



"highlight colorcolumn ctermbg=161
"set colorcolumn=80
" set textwidth=79
" set formatoptions+=t
" set wrap linebreak textwidth=79
" coloring settings
 " colors the code
"set t_Co=256 
"colorscheme molokai
"highlight Comment cterm=bold
"" plugins
"filetype plugin on 
"" pathogen
"execute pathogen#infect()
"" Guide lines
"let g:indentLine_char = '│'
"let g:indentLine_color_term = 235
"let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_first_char = '│'
"let g:indentLine_enabled = 1
"" pep8
"let g:PyFlakeOnWrite = 1
"let g:PyFlakeCheckers = 'pep8'
"let g:PyFlakeAggressive = 1
"let g:PyFlakeMaxLineLength = 79
"let g:PyFlakeRangeCommand = ''
"map <C-k><C-d> :PyFlakeAuto<CR>
"" syntax
"let g:pyflakes_use_quickfix = 0
"" file system
"autocmd vimenter * NERDTree
"
"" Keyboard shortcuts
"" Different settings
"set showmode
"set wildmenu " menu has auto completion
"set showmatch " show matching brackets

