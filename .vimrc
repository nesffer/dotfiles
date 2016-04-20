set shell=/bin/zsh          " http://stackoverflow.com/a/12231417
"set startofline
set splitright              " Split Right (:vs)
set splitbelow              " Split Below (:sp)
set nocompatible            " required
set nofoldenable            " No Folding
set noswapfile              " No Swap File
set nowrap                  " No Wrap
"set autowrite               " AutoSave when switch other file
set autoread                " Automatically read when external changed
set ruler                   " current cursor position
set history=1000            " Vim History
filetype off                " required
set fileformat=unix         " Unix file format
set clipboard=unnamed       " Sync clipboard with OS

" ==========Plugins============================================Plugins==========

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'gmarik/Vundle.vim'

" vim-fcitx
Plugin 'vim-scripts/fcitx.vim'

" NERD Tree (:NERDTree or :NERDTreeToggle)
Plugin 'scrooloose/nerdtree'

" AutoComplPop
Plugin 'vim-scripts/AutoComplPop'

" Python AutoComplete (sudo -H pip3 install jedi)
Plugin 'davidhalter/jedi-vim'
" Python flake8 (Press <F7>)
"Plugin 'nvie/vim-flake8'

" JavaScript (https://github.com/pangloss/vim-javascript)
Plugin 'pangloss/vim-javascript'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Monokai Scheme
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vim automatic visual mode using mouse
set mouse-=a  " Disabled

" enable syntax highlighting
syntax enable

" ==========Display============================================Display==========

" Show Title
set title

" show line numbers
set number
set numberwidth=4

" set tabs to have 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Hightlight Cursor line
set cursorline

" set autoindent
set smartindent

" Backspace to previous line
set backspace=start,eol,indent

" show a visual line under the cursor's current line

" Brace Match
set showmatch
set matchpairs=(:),{:},[:],<:>

" 80 column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" trim automatic white space
autocmd BufWritePre * :%s/\s\+$//e

" =====Powerline=====
set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours
set t_Co=256
" =====Powerline=====

" Monokai Scheme (~/.vim/colors/monokai.vim)
colorscheme monokai

" ==========Search==============================================Search==========

" Hightlight Search
set hlsearch
" Ignore Case sensitivity Search
set ignorecase
" Gradually Search
set incsearch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" HTML tag autocomplete
iabbrev </ </<C-X><C-O>

" ==========Mapping============================================Mapping==========

" Window resize shortcut
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" NERD Tree
nnoremap <F7> :NERDTree<CR>

