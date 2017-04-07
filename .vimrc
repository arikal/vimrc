" start vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Bundle "ervandew/supertab"
Bundle "evidens/vim-twig"
Bundle "joonty/vdebug"
Bundle "mbbill/undotree"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"
Bundle "spf13/PIV"
Bundle "tobyS/pdv"
Bundle "tobyS/vmustache"
Bundle "Townk/vim-autoclose"
Bundle "vim-scripts/DfrankUtil"
Bundle "vim-scripts/vimprj"
Bundle "jwalton512/vim-blade"
Bundle "posva/vim-vue"
Bundle "editorconfig/editorconfig-vim"
Bundle "majutsushi/tagbar"
Bundle "jistr/vim-nerdtree-tabs"
Bundle "ctrlpvim/ctrlp.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "sickill/vim-monokai"
Bundle "morhetz/gruvbox"
Bundle "ajh17/VimCompletesMe"
" end vundle

filetype indent plugin on
let g:pdv_template_dir=$HOME."/.vim/templates/pdv"
let g:PIVCreateDefaultMappings=0
let g:vimprj_dirNameForSearch="project.vim"
let g:EditorConfig_core_mode="external_command"
"let g:SuperTabDefaultCompletionType=""
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:ctrlp_max_files=0
let g:ctrlp_user_command=[".git", "cd %s && git ls-files -co --exclude-standard"]
let g:ctrlp_prompt_mappings={
    \ "AcceptSelection(\"e\")": ["<C-t>"],
    \ "AcceptSelection(\"t\")": ["<CR>", "<2-LeftMouse>"]
    \ }
let mapleader=","
"let &colorcolumn=join(range(121,999),",")
nnoremap <C-D> :call pdv#DocumentCurrentLine()<CR>
noremap <C-N><C-N> :set invnumber<CR>
noremap <C-P><C-P> :set invpaste<CR>
noremap <silent><leader>p :!php -l %<CR>
noremap <silent><leader>t :NERDTreeTabsToggle<CR>
noremap <silent><leader>U :UndotreeToggle<CR>
noremap <silent><leader>w :set nolist!<CR>
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
noremap <silent><F7> :TagbarToggle<CR>
noremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2'<CR>gv=gv
set autochdir
set autoindent
set background=dark
set backspace=indent,eol,start
set backupcopy=yes
set backupdir=~/.vim/tmp
set backup
set confirm
"set cursorcolumn
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
set modeline
set modelines=1
set modifiable
set noexrc
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set nowrap
set number
"set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set softtabstop=4
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]
set tabstop=4
set title
set t_Co=256
set wildmenu
syntax on

"function! PhpDocHelper()
"    let filename=expand("<cword>")
"    let filename=tolower(filename)
"    let filename=$HOME."/.vim/docs/php/".filename.".html"
"    let filename=substitute(filename, "_", "-", "g")
"    if filereadable(filename)
"        let command="!lynx ".filename
"        execute command
"    endif
"endfunction

function! PhpDocHelper()
    let url=expand("<cword>")
    let url="http://www.php.net/search.php?pattern=".url
    silent execute "!xdg-open '".url."' &> /dev/null &" | redraw!
endfunction

noremap <silent><leader>d :call PhpDocHelper()<CR>

if filereadable($HOME."/.vim/custom.vim")
    execute ":source ".$HOME."/.vim/custom.vim"
endif

color gruvbox

"autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight CursorLine ctermbg=red cterm=none
autocmd ColorScheme * highlight CursorColumn ctermbg=red cterm=none
