" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible

" Needed for vundle will turn off after vundle inits.
filetype off

" Initialize Vundle.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle config.
Bundle 'gmarik/vundle'

" Git
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'airblade/vim-gitgutter'

" Editing
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'anyakichi/vim-surround'
Bundle 'ragtag.vim'
Bundle 'majutsushi/tagbar'
Bundle 'matchit.zip'
Bundle 'tomtom/tcomment_vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'myusuf3/numbers.vim'
Bundle 'Tabular'
Bundle 'tpope/vim-sleuth'

" Buffer and file management
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'Buffergator'
Bundle 'ack.vim'
Bundle 'unimpaired.vim'
Bundle 'ctrlp.vim'
" Bundle 'nerdtree-ack'

" Theme
Bundle 'Valloric/vim-valloric-colorscheme'
Bundle 'flazz/vim-colorschemes'

" Must be compiled
Bundle 'Valloric/YouCompleteMe'

" Languages
Bundle 'jQuery'
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'helino/vim-json'
Bundle 'scrooloose/syntastic'
Bundle 'skammer/vim-css-color'
Bundle 'pangloss/vim-javascript'
Bundle 'Haml'
Bundle 'mattn/zencoding-vim'
Bundle 'PIV'
Bundle 'colorv.vim'

" Snipits
" Bundle 'SirVer/ultisnips'
Bundle 'msanders/snipmate.vim'

" Utility
Bundle 'L9'
Bundle 'Rename'

" syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

" Display Settings
colorscheme mustang
" set background=dark               " enable for dark terminals

" Indent Guides
" let g:indent_guides_enable_on_vim_startup = 1

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent
set smartindent

set laststatus=2                 " Show the status line all the time
" Useful status information at bottom of screen
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set fillchars+=stl:\ ,stlnc:\

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" user the_silver_searcher instead of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Drupal settings
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

" Enable the powerline module.
set rtp+=~/dotfiles/powerline/powerline/bindings/vim
