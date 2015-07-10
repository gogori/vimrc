"set up the vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
Bundle 'tpope/vim-sensible'
"Bundle 'scrooloose/nerdtree'
Bundle 'https://github.com/scrooloose/syntastic.git'
Bundle 'https://github.com/Shougo/neocomplcache.vim'
Bundle 'https://github.com/Shougo/neosnippet'
Bundle 'https://github.com/Shougo/neosnippet-snippets'
Bundle 'https://github.com/klen/python-mode'
Bundle 'https://github.com/powerline/powerline.git',{'rtp': 'powerline/bindings/vim/'}
Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
filetype plugin indent on

"setup vim format
colorscheme molokai
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
syntax on
set autoindent
set number 
set cursorline
set nobackup
set colorcolumn=80
set nowritebackup
set history=70
set showmatch
set smartindent
set mouse=a
set hlsearch
set ignorecase
set ruler
set wildmenu
set wildmode=list:longest,full
set smartcase
"incremental search

set incsearch
"Setup latex
filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat ='pdf'
let g:Tex_Folding=0
let g:Tex_ViewRule_pdf='open -a Preview'
let g:Tex_completion_bibliographystyle = 'abbr,alpha,plain,unsrt'
"setup autocomplete
let g:neocomplcache_enable_at_startup = 1
let g:neocomplete#enable_at_startup = 1
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


"setup NERDtree
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType ==  primary") | q | endif
"autocmd VimEnter * wincmd p


"setup syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"setup pymode
let g:pymode = 1
let g:pymode_warning = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = ''
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_completion_on_dot = 1

"key mapping for running python after saving
imap <S-r> <Esc> :w<CR>:!python %<CR>

"key map for esc
inoremap jj <Esc>
vnoremap jj <Esc> 
vnoremap > >gv
vnoremap < <gv
nnoremap Y y$
nnoremap _ ggY``P
nnoremap j gj
nnoremap k gk
nnoremap <Space> :
