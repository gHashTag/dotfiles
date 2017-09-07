call plug#begin('~/.config/nvim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'

" Use deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'kern/vim-es7'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'tellijo/vim-react-native-snippets'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
let g:deoplete#enable_at_startup = 1

" красота одним нажатием
Plug 'maksimr/vim-jsbeautify'
let g:editorconfig_Beautifier = '~/.editorconfig'
map <c-f> :call JsBeautify()<cr>

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

" Track the engine.
Plug 'SirVer/ultisnips'

Plug 'mxw/vim-jsx' "including: pangloss/vim-javascript jelera/vim-javascript-syntax othree/yajs


" Ctrl P
Plug 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*/node_modules/*,*/android/*,app.json,yarn.lock,package.json,package-lock.json,*/__tests__/*,*.so,*.swp,*.zip

Plug 'flowtype/vim-flow'
Plug 'majutsushi/tagbar'
Plug 'elzr/vim-json'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'

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

nnoremap <leader>t :call BgToggleSol()<cr>

let g:solarized_termcolors=16
colorscheme solarized
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 0

" Settings
set number
set tabstop=2                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" Mappings
map <C-n> :NERDTreeToggle <CR> 
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>w <Plug>(easymotion-bd-w)
:imap jj <Esc>
:imap оо <Esc> 
nmap <C-t> :TagbarToggle<CR>
set pastetoggle=<C-j>
" Trigger configuration React Snippets
let g:UltiSnipsExpandTrigger="<C-l>"
"let g:UltiSnipsEditSplit="vertical"
" Tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
" Airline
nnoremap <silent> <LocalLeader>[ :bp
nnoremap <silent> <LocalLeader>] :bn

:ca WQ wq
:ca Wq wq
:ca W w
:ca Q q

" Ctrl-p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_switch_buffer = 'Et'
" Makros
let @a='%s/;//g' "заменить ; на удалить
