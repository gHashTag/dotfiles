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
Plug 'kern/vim-es7'
Plug 'metakirby5/codi.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6'  }
Plug 'bling/vim-airline'
Plug 'flowtype/vim-flow'
Plug 'majutsushi/tagbar'
Plug 'elzr/vim-json'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'othree/yajs.vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'ervandew/supertab'
Plug 'mboughaba/i3config.vim'
set ft=i3config
let g:SuperTabDefaultCompletionType = "<c-n>"
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'

" Use deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
set completeopt+=preview

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
  let g:ale_linters = {'jsx': ['eslint']}
  let g:ale_fixers = {
  \   'javascript': [
  \       'DoSomething',
  \       'babel-eslint',
  \       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
  \   ],
  \}
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  augroup END
"let g:airline_solarized_bg='dark'

Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
let g:deoplete#enable_at_startup = 1


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

nnoremap <Leader>g :call BgToggleSol()<cr>
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
:imap jj <Esc>
:imap оо <Esc> 
nmap <C-\> :TagbarToggle<CR>
set pastetoggle=<C-j>
" Trigger configuration React Snippets
let g:UltiSnipsExpandTrigger="<C-l>"
"let g:UltiSnipsEditSplit="vertical"
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
