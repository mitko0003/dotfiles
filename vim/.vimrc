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
Plugin 'scrooloose/syntastic'
Plugin 'Rip-Rip/clang_complete'
Plugin 'beyondmarc/opengl.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tell-k/vim-autopep8'

" All of vim Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color scheme settings
colorscheme molokai
let g:molokai_original = 0

" airline settings
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
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

" syntastic options for more info:
" https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " prevent location list from opening all the time
let g:syntastic_enable_signs = 1 " marks lines with errors
let g:syntastic_style_warning_symbol = "⚠" " cool signs for errors (+ next 4)
let g:syntastic_style_error_symbol = "✗"  
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_error_symbol = "✗"
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = '-std=c++14' " stops errors and warnings when using c++11 stuff

" autopep8 options
let g:autopep8_disable_show_diff=1

" disable backups
set nobackup
set noswapfile
set nowritebackup

" commands
command W w !sudo tee > /dev/null %

" key combination maps
map <C-o> :NERDTreeToggle<CR>
autocmd FileType python map <buffer> <C-k><C-d> :call Autopep8()<CR>

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

" spell checking
setlocal spell spelllang=en_gb " buildin feature

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

