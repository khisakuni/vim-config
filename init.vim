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
