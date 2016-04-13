set shell=/bin/zsh          " http://stackoverflow.com/a/12231417
set startofline
set splitbelow
set nocompatible            " required
set nofoldenable
set noswapfile
set nowrap
set history=1000            " Vim History
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Python AutoComplete (sudo -H pip3 install jedi)
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'    " Press <F7>

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vim automatic visual mode using mouse
set mouse=a

" enable syntax highlighting
syntax enable

" Show Title
set title

" show line numbers
set number
set numberwidth=4

" set tabs to have 4 spaces
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" indent when moving to the next line while writing code
" set autoindent
set smartindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" Backspace to previous line
set backspace=start,eol,indent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" unix file format
set fileformat=unix

" Hightlight Search
set hlsearch
" Ignore Case sensitivity Search
set ignorecase
" Gradually Search
set incsearch

" Background Color
" set background=dark

" 80 column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" trim automatic white space
autocmd BufWritePre * :%s/\s\+$//e

" enable all Python syntax highlighting features
let python_highlight_all = 1

" " Powerline
set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" " Powerline

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" Monokai Scheme (~/.vim/colors/monokai.vim)
colorscheme monokai

" Brace Match
set matchpairs=(:),{:},[:],<:>

" HTML tag autocomplete
iabbrev </ </<C-X><C-O>

