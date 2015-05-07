" colemak rebind
" map n gj|nnoremap n gj
" map e gk
" nnoremap i l|xnoremap i l
" 
" " bump n to c-k and N to c-m
" nnoremap <c-u> n|xnoremap <c-u> n|onoremap <c-u> n|
" nnoremap <c-y> N|xnoremap <c-y> N|onoremap <c-y> N|
" 
" " use k for insert/command
" imap kk <Esc>
" noremap k i
" noremap K I
" 
" " colemak u
" noremap l u
" noremap L U
" 
" " insert quick movement
" " imap <c-h> <left>
" " imap <c-n> <down>
" " imap <c-e> <up>
" " imap <c-i> <right>
" 
" " window movement
" nnoremap <c-w>n <c-w>j
" nnoremap <c-w>i <c-w>l
" nnoremap <c-w>e <c-w>k
" 
" " quick window move
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

imap kk <Esc>

set nohlsearch
              
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" this nerdtree mapping interferes with movement
" let g:NERDTreeMapOpenExpl = "j"
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
