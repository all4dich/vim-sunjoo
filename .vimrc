" Common Vim properties
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set numberwidth=4
set hlsearch incsearch
let mapleader = ","

" Edit $MYVIMRC 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

" Buffer Shortcuts - Start
"" Opep a buffer with buffer number
noremap <leader>,b :buffer  
"" Delete a current buffer
noremap <leader>,qb :bdelete<CR>
" Buffer Shortcuts - End

" Add or Replace some actions 
"" Use '
inoremap jk <esc>
"" Open NERDTree
inoremap  ,t <esc>:NERDTree<CR>
nnoremap  ,t :NERDTree<CR>
" Replace or Add some actions 

" autocmd FileType Action {{{
augroup filetype_vim
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
augroup END
" }}}

" Tab actions {{{
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " New Tab
  noremap <D-t> :tabnew<CR>
  " Close a current tab
  noremap <D-w> :tabclose<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif
" }}}

" Set another shortcuts
" Insert Date string. After doing it, move to a next line and insert '-' list
" prefix
nnoremap <F6> o<esc>^i<C-R>=strftime("%F")<CR><esc>o<C-R>=strftime("    * ")<CR>
inoremap <F6> <esc>o<esc>^i<C-R>=strftime("%F")<CR><esc>o<C-R>=strftime("    * ")<CR>
" Insert just a next line with 'dash' character
inoremap <F7> <esc>o<esc>^i<C-R>=strftime("    * ")<CR>


" Set Pathogen Enable {{{
call pathogen#infect()
syntax enable  
filetype plugin on  
" }}}

" set textwidth=160
" set colorcolumn=+1
" highlight ColorColumn ctermbg=cyan guibg=cyan

fun! Dos2unixFunction()
    let _s=@/
    let l = line(".")
    let c = col(".")
    try
        set ff=unix
        w!
        "%s/\%x0d$//e
    catch /E32:/
        echo "Sorry, first save the file."
    endtry
    let @/=_s
    call cursor(l, c)
endfun
com! Dos2Unix keepjumps call Dos2unixFunction()

colorscheme desert
set number  
" GO Lang plugin configurations {{{
" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 0
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" }}}

set ai
set cursorline

" For airlien plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':.:t'
"" Show buffer number in list
let g:airline#extensions#tabline#buffer_nr_show = 1

"""
" let g:deoplete#enable_at_startup = 1
set pyxversion=3
" jedi-vim Configuration {{{
" let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 1
let g:jedi#completions_enabled = 1
let g:jedi#completions_command = "<leader>c"
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>a"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>u"
" let g:jedi#rename_command = "<leader>r"
" }}}
