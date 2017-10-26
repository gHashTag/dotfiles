call plug#begin('~/.config/nvim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tellijo/vim-react-native-snippets'
Plug 'ervandew/supertab'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'kern/vim-es7'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript' 
Plug 'othree/yajs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
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
set background=dark
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
let g:UltiSnipsEditSplit="vertical"
" Tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
" Airline
nnoremap <silent> <LocalLeader>[ :bp
nnoremap <silent> <LocalLeader>] :bn
nnoremap  <leader>rc   <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Ctrl-p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Trigger configuration React Snippets
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsEditSplit="vertical"


" Makros
let @a='%s/;//g' "заменить ; на удалить
