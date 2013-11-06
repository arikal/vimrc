color evening

" start vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'ervandew/supertab'
Bundle 'evidens/vim-twig'
Bundle 'mbbill/undotree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'spf13/PIV'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'Townk/vim-autoclose'
" end vundle

autocmd ColorScheme * highlight Normal ctermbg=none
filetype indent plugin on
let g:pdv_template_dir=$HOME."/.vim/templates/pdv"
let g:PIVCreateDefaultMappings=0
let mapleader=","
nnoremap <C-D> :call pdv#DocumentCurrentLine()<CR>
noremap <C-N><C-N> :set invnumber<CR>
noremap <C-P><C-P> :set invpaste<CR>
noremap <silent><leader>p :!php -l %<CR>
noremap <silent><leader>t :NERDTreeToggle<CR>
noremap <silent><leader>U :UndotreeToggle<CR>
noremap <silent><leader>w :set nolist!<CR>
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
set autochdir
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/tmp
set backup
set confirm
set cursorline
set expandtab
set foldlevel=1
set foldmethod=marker
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>-,trail:·,eol:$
set noexrc
set nomodeline
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set nowrap
set number
set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set softtabstop=4
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]
set tabstop=4
set textwidth=120
set title
set t_Co=256
set wildmenu
syntax on
