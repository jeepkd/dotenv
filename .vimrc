call plug#begin('~/.vim/plugged')

Plug 'Chiel92/vim-autoformat'
Plug 'airblade/vim-gitgutter'
Plug 'andrewradev/splitjoin.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'flazz/vim-colorschemes'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-quickrun'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic', { 'do': 'pip install flake8' }
Plug 'lifepillar/vim-mucomplete'

call plug#end()

set mouse=a
set nu
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=2           " use 4 spaces to represent tab
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set colorcolumn=80
set cursorline
set splitbelow
set splitright
set nowrap
set hls
set fillchars+=vert:│

" runtime path for fzf
set rtp+=~/.fzf

" Ack : Use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"set background=light
colorscheme codedark

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

" NERDCommenter
let g:NERDDefaultAlign = 'left'

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" MU autocomplete
set completeopt+=menuone
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1

" Keymapping
map <C-k><C-b> :NERDTreeToggle<CR>

" Custom commands
command! Reload execute "so ~/.vimrc"
command! Vimrc execute "tabe ~/.vimrc"
