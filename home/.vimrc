" Map leader
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable compatible mode
set nocompatible

" Swap file settings
set nobackup
set nowb
set noswapfile

" Disable filetype
filetype off

set backspace=indent,eol,start
set ruler
" set relativenumber
set number
set cursorline
set showcmd
set incsearch
set hlsearch


set mouse=a

set tabstop=2
set shiftwidth=2
set scrolloff=3
set expandtab

set guioptions-=L
set guioptions-=T
set guioptions-=r

set wrap
set linebreak

" Disable the blinking cursor.
set gcr=a:blinkon0

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Suffixes for gf
set suffixesadd+=.js,.coffee,.jsx,.csx,.cjsx

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h14


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'yosiat/oceanic-next-vim'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-scripts/copypath.vim'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/argtextobj.vim'

" ----- Snippets ------------------------------------------------------
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'Valloric/YouCompleteMe'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/ZoomWin'
Plugin 'wellle/targets.vim'
Plugin 'tpope/vim-surround'

" ----- man pages, tmux -----------------------------------------------
Plugin 'jez/vim-superman'

" ----- Syntax plugins ------------------------------------------------
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'brettof86/vim-swigjs'
Plugin 'digitaltoad/vim-jade'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
"Plugin 'elentok/plaintasks.vim'
Plugin 'moll/vim-node'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'tasks.vim'
Plugin 'irrationalistic/vim-tasks'

" ---- Extras/Advanced plugins ----------------------------------------
" Automatically insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
" Commenting
Plugin 'scrooloose/nerdcommenter'
" Helper for tab separation of items based on a delimiter
Plugin 'godlygeek/tabular'
" Expansion of html codes
Plugin 'mattn/emmet-vim'
" Buffer explorer plugin
Plugin 'bufexplorer.zip'
" Buffer management
Plugin 'vim-scripts/bufkill.vim'
" JSDoc helpers
Plugin 'heavenshell/vim-jsdoc'
" Helper for sublime-like multiple cursors
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()

filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au BufNewFile,BufRead *.hbs set filetype=mustache
" au BufNewFile,BufReadPost *.jade set filetype=jade
" au BufNewFile,BufReadPost *.coffee set filetype=coffee

set foldmethod=syntax
set foldlevelstart=99

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show statusbar
set laststatus=2

" ----- Powerline -----------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

" ----- JSDoc ---------------------------------------------------------
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_allow_shorthand = 1
nmap <silent> <C-l> <Plug>(jsdoc)

" ----- CTRL-P --------------------------------------------------------
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ----- Indent Line ---------------------------------------------------
let g:indentLine_char = '┆'

" ----- mxw/jsx ----
let g:jsx_ext_required = 0

" ----- jistr/vim-nerdtree-tabs -----
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

let g:syntastic_javascript_checkers = ['eslint']

" ----- xolox/vim-easytags settings -----
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- airblade/vim-gitgutter settings -----
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- Snippets -----
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 let g:ycm_key_list_previous_completion=['<Up>']
 let g:UltiSnipsExpandTrigger="<c-e>"
 let g:UltiSnipsListSnippets="<c-l>"
 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
" ----- YouCompleteMe -------------------------------------
" let g:ycm_complete_in_comments = 1 
" let g:ycm_seed_identifiers_with_syntax = 1 
" let g:ycm_collect_identifiers_from_comments_and_strings = 1 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vimrc.local

