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

Plug 'brookhong/cscope.vim'
" теперь файл будет подхватываться на автомате или браться из переменной среды
if has("cscope")
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
endif

nnoremap <Leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <Leader>l :call ToggleLocationList()<CR>

nmap <Leader>f :cs find g <c-r>=expand("<cword>")<cr><cr>

nmap <C-Space><C-Space>f \:vert :scs find g <C-R>=expand("<cword>")<CR><CR>

nmap <Leader>a :cs find a <C-R>=expand("<cword>")<CR><CR> " a: Найти присвоения этому символу 
nmap <Leader>c :cs find c <C-R>=expand("<cword>")<CR><CR> " c: Найти функции, вызывающие эту функцию 
nmap <Leader>d :cs find d <C-R>=expand("<cword>")<CR><CR> " d: Найти функции, вызываемые этой функцией 
nmap <Leader>e :cs find e <C-R>=expand("<cword>")<CR><CR> " e: Найдите этот рисунок egrep
nmap <Leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR> " f: Найти этот файл
nmap <Leader>g :cs find g <C-R>=expand("<cword>")<CR><CR> " g: Найти это определение
nmap <Leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> " i: Найти файлы # включая этот файл
nmap <Leader>s :cs find s <C-R>=expand("<cword>")<CR><CR> " s: Найти этот символ C
nmap <Leader>t :cs find t <C-R>=expand("<cword>")<CR><CR> " t: Найти эту текстовую строку


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
map <Leader>q :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer> <Leader>f :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <Leader>f :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <Leader>f :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <Leader>f :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <Leader>f :call RangeCSSBeautify()<cr>

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

nnoremap <Leader>t :call BgToggleSol()<cr>

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
nmap <C-\> :TagbarToggle<CR>
set pastetoggle=<C-j>
" Trigger configuration React Snippets
let g:UltiSnipsExpandTrigger="<C-l>"
"let g:UltiSnipsEditSplit="vertical"
" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <Leader>a :TagbarToggle<CR>

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
