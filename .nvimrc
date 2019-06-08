call plug#begin('~/.config/nvim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'jparise/vim-graphql'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'sbdchd/neoformat'
Plug 'kern/vim-es7'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'elzr/vim-json'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'herringtondarkholme/yats.vim'
Plug 'ervandew/supertab'
Plug 'wokalski/autocomplete-flow'
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['flow', 'lsp'],
    \ }
Plug 'mboughaba/i3config.vim'
set ft=i3config


Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'

" Use deoplete.
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-flow'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
let g:neosnippet#disable_runtime_snippets = { '_' : 1 }
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/dotfiles/snippets'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

Plug 'mfulz/cscope.nvim'
" Path to store the cscope files (cscope.files and cscope.out) Defaults to '~/.cscope'
let g:cscope_dir = '~/.nvim-cscope'
nmap <c-y> :cs find g <c-r>=expand("<cword>")<cr><cr>

" Map the default keys on startup
" These keys are prefixed by CTRL+\ <cscope param>
" A.e.: CTRL+\ d for goto definition of word under cursor
" Defaults to off
let g:cscope_map_keys = 1
" Update the cscope files on startup of cscope.
" Defaults to off
let g:cscope_update_on_start = 1

Plug 'w0rp/ale'
" Asynchronous Lint Engine (ALE)
let g:ale_linters = {'jsx': ['eslint', 'flow']}
" let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1

lang en_US.UTF-8

" Enable completion where available.
" let g:ale_completion_enabled = 1
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warn'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  augroup END
"let g:airline_solarized_bg='dark'

Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'alvan/vim-closetag'                                                         
let g:closetag_close_shortcut = '<leader>>'                                       
" Add > at current position without closing the current tag, default is '<leader>>'                                                                      
let g:closetag_shortcut = '>'                                                     
" Shortcut for closing tags, default is '>'                                       
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.) 
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js'                             
" This will make the list of non closing tags self closing in the specified files.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'                               
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.

Plug 'mxw/vim-jsx' "including: pangloss/vim-javascript jelera/vim-javascript-syntax othree/yajs
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"

" Ctrl P
" Plug 'kien/ctrlp.vim'
" set wildignore+=*/tmp/*,*/node_modules/*,*/android/*,app.json,yarn.lock,package.json,package-lock.json,*/__tests__/*,*.so,*.swp,*.zip

" Initialize plugin system

call plug#end()

" Color Settings
syntax enable
:set bg=dark
function! BgToggleSol()
  if &background == "dark"
    execute ":set background=light"
  else
    execute ":set background=dark"
  endif
endfunction

nnoremap <Leader>i :call BgToggleSol()<cr>
let g:solarized_termcolors=16
colorscheme solarized

" Airline
let g:airline#extensions#branch#enabled = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Settings
set number
set tabstop=2                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple


" Mappings
:nnoremap <esc> :noh<return><esc> "снимает выделеные  esc
map <C-n> :NERDTreeToggle <CR> 
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>w <Plug>(easymotion-bd-w)
:imap jk <Esc>
:imap оо <Esc> 
nmap <C-\> :TagbarToggle<CR>
set pastetoggle=<C-j>
" Trigger configuration React Snippets
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsEditSplit="vertical"

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <Leader>a :TagbarToggle<CR>

" NERD Commenter 
filetype plugin on

" Airline change buffer
nnoremap <silent> <Tab>[ :bp <cr>
nnoremap <silent> <Tab>] :bn <cr>

" vim-devicons
set encoding=utf8
let g:airline_powerline_fonts = 1

" Caps close and quit
:ca WQ wq
:ca Wq wq
:ca W w
:ca Q q

" Ctrl-p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_switch_buffer = 'Et'


" Makros
let @a='%s/;//g' "заменить ; на удалить

"<BS>           Backspace
"<Tab>          Tab
"<CR>           Enter
"<Enter>        Enter
"<Return>       Enter
"<Esc>          Escape
"<Space>        Space
"<Up>           Up arrow
"<Down>         Down arrow
"<Left>         Left arrow
"<Right>        Right arrow
"<F1> - <F12>   Function keys 1 to 12
"#1, #2..#9,#0  Function keys F1 to F9, F10
"<Insert>       Insert
"<Del>          Delete
"<Home>         Home
"<End>          End
"<PageUp>       Page-Up
"<PageDown>     Page-Down
"<bar>          the '|' character, which otherwise needs to be escaped '\|'
