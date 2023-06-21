" CONFIGURATION ----------- {{{

    " enable type file detection, plugin and indent for detected file type
    filetype on
    filetype plugin on
    filetype indent on

    " turn syntax highlighting on
    syntax on
    colorscheme desert
    set splitright
    set guifont=Cascadia_Code:h16
    set backspace=indent,eol,start
    set t_Co=256
    set termguicolors
    " set t_ut=
    " set background=dark
    " let g:codedark_italics=1
        " let g:codedark_transparent=1
    " let g:airline_theme = 'codedark'


    " add numbers and relative numbers to each line on left-hand side
    set number
    set relativenumber

    " highlight cursor line underneath the cursor horizontally and vertically
    set cursorline
    set cursorcolumn
    " do not let cursor scroll below or above N number of lines
    set scrolloff=10

    " set shift and tab width to 4 spaces, and space instead of tabs
    set shiftwidth=4
    set tabstop=4
    set expandtab

    " do not save backup files
    set nobackup

    " wrap lines
    set wrap

    " search
    set incsearch
    set ignorecase
    set smartcase
    set showmatch
    set hlsearch

    " cmd
    set showcmd
    set showmode
    set history=1000

    " wildmenu
    set wildmenu
    set wildmode=list:longest
    set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

    " set a limit column
    set colorcolumn=80

    " others
    set encoding=utf-8
    " }}}

    " PLUGINS ----------- {{{
    call plug#begin()

        " Plug 'tomasiser/vim-code-dark'
        Plug 'preservim/nerdtree'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'tpope/vim-fugitive'
        Plug 'dense-analysis/ale'
        Plug 'vim-syntastic/syntastic'
        Plug 'nvie/vim-flake8'
        " Plug 'neoclide/coc.nvim'
        "Plug 'tmhedberg/SimpylFold'
        "Plug 'Valloric/YouCompleteMe'

call plug#end()

" for some reason, colorscheme must come after close the plug to work
" colorscheme codedark
" }}}

" MAPPINGS ---------- {{{

nnoremap <Up> <NoP>
nnoremap <Down> <NoP>
nnoremap <Left> <NoP>
nnoremap <Right> <NoP>

inoremap <Up> <NoP>
inoremap <Down> <NoP>
inoremap <Left> <NoP>
inoremap <Right> <NoP>

vnoremap <Up> <NoP>
vnoremap <Down> <NoP>
vnoremap <Left> <NoP>
vnoremap <Right> <NoP>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

"VIMSCRIPTS --------- {{{
"
" enable code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
set foldmethod=indent
set foldlevel=99

" more vim scripts
" }}}

" STATUS LINE ------- {{{
"
" }}}

" Python Config ---- {{{
"

" }}}
