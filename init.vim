call plug#begin()

Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'

" NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'w0rp/ale'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Go development environment
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Ack to search files
Plug 'mileszs/ack.vim'

" CtrlP for fuzzy finding files
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Ale Configs
let g:ale_linters = {
	\'go': ['go', 'go vet', 'golint', 'gometalinter', 'gotype', 'gofmt', 'staticcheck', 'go build']
\}
let g:ale_fixers = {
	\'go': ['gofmt', 'goimports'],
\}
let g:ale_fix_on_save = 1
let g:ale_go_metalinter_options = 'fast'

" NERDTree config
let loaded_netrwPlugin = 1
au VimEnter *  NERDTree

" Change leader form \ to ;
let mapleader=";"

" Mappings
map <Leader>\ :NERDTreeToggle<CR>

set clipboard=unnamed

" Display line numbers
set number

" Use Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Use Silver Searcher in CtrlP
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Don't wrap lines
set nowrap
"
" Trim whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Tabs / indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

