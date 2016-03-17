" Start NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible 
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))
" Let NeoBundle manage NeoBundle. Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bling/vim-airline'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'cespare/vim-toml'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'elzr/vim-json'
NeoBundle 'fatih/vim-go'
NeoBundle 'godlygeek/tabular'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jstemmer/gotags.git'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'klen/python-mode'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'oblitum/rainbow'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tfnico/vim-gradle'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/netrw.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'chriskempson/tomorrow-theme'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'tell-k/vim-autopep8'
NeoBundle 'dgryski/vim-godef'
NeoBundle 'mhinz/vim-janah'
NeoBundle 'mkarmona/colorsbox'
NeoBundle 'jdkanani/vim-material-theme'
NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'jscappini/material.vim'
NeoBundle 'wesQ3/wombat.vim'
NeoBundle 'joshdick/onedark.vim'
NeoBundle 'marcopaganini/termschool-vim-theme'

" Required:
call neobundle#end()
" Required:
syntax on
filetype plugin indent on
" If there are uninstalled bundles found on startup, this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts--------------------------------

" uncomment this to profile your vim and find resource hogs
" profile start profile.log
" profile func *
" profile file *
" after quitting run the following commands
" profile pause
" noautocmd qall!

" Disabling vim's startup message
set shortmess=at

let g:pymode_rope = 1

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 1

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()


" Change default colorscheme
syntax enable
set background=dark
"colorscheme Tomorrow-Night-Bright
"colorscheme distinguished
"colorscheme janah 
"colorscheme colorsbox-material
"colorscheme solarized
"colorscheme onedark
colorscheme termschool

" Tagbar
nmap <F4> :TagbarToggle<CR>

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_highlighting = 1

" Ident shortcuts
vmap <D-]> >gv
vmap <D-[> <gv

" Vim-indent-guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" Enable ruler
set ruler

" Enable mouse
set mouse=a

" Set history size
set history=100

" Enable search highlighting
set hlsearch
" Add global search/replace as default
set gdefault
" Highlight dynamically as pattern is typed
set incsearch

" Expand tabs to spaces
set expandtab
" Set tab size
set tabstop=4
" Set expanded tab size
set shiftwidth=4

" Display right column/gutter
set colorcolumn=120

" Automatically show matching brackets
set showmatch

" Backspace setup
set backspace=indent,eol,start

" Disable old vi compatibility
set nocompatible

" Enable relative line numbers
set relativenumber

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don't add empty newline at EOL
set binary
set noeol

" Use F2 to toggle pastemode and avoid breaking pasted content
set pastetoggle=<F2>

" Respect modeline in files
set modeline
set modelines=4

" Enable line numbers
set number

" Highlight current line
set cursorline

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor=getpos(".")
  let old_query=getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" For gotags
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

" Rainbow
let g:rainbow_active = 1

" Netrw Style Listing
let g:netrw_liststyle = 3
nnoremap <Leader><Leader> :TagbarOpen<CR><C-W>l<C-W>s:e .<CR><C-W>h:let g:netrw_chgwin=winnr()<CR><C-W>l

" Tab/Spaces
au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et

let g:go_auto_type_info = 0

" Disable scratch preview area
set completeopt-=preview

" JavaScript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

autocmd FileType python map <buffer> <c-f> :call Autopep8()<CR>

" vim-go
let g:go_play_open_browser = 1
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Go related mappings
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" vim-godef
let g:godef_split=2

" vim-json
let g:vim_json_syntax_conceal = 0

let g:go_auto_type_info = 0

" Disable scratch preview area
set completeopt-=preview

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
