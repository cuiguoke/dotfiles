" ...........................................................................
" VundleVim/Vundle.vim
" ...........................................................................
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install plugin for rust
" Plugin 'rust-lang/rust.vim'

" Install plugin for auto-pairs
Plugin 'jiangmiao/auto-pairs'

" Install plugin for ycm
" Plugin 'ycm-core/YouCompleteMe'

" gitgutter
Plugin 'airblade/vim-gitgutter'

" ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

" fern
Plugin 'lambdalisue/fern.vim'

" git plugin
Plugin 'tpope/vim-fugitive'

" enable :GBrowse for tpope/vim-fugitive
Plugin 'tpope/vim-rhubarb'

" copilot
Plugin 'github/copilot.vim'

" similar ycm
Plugin 'neoclide/coc.nvim'

" altercation/vim-colors-solarized
" Plugin 'altercation/vim-colors-solarized'

" morhetz/gruvbox
Plugin 'morhetz/gruvbox'

" rakr/vim-one
" Plugin 'rakr/vim-one'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ...........................................................................
" basic configuration
" ...........................................................................
set nu
set ruler
set hlsearch

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set autoindent

" set indent style for cpp
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType cpp setlocal cindent smartindent

set textwidth=80
set colorcolumn=80  " 显示参考线

" select something with the mouse without visual mode
set mouse=v

" start from previous position when open files
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enable cscope
if has("cscope") && filereadable("/usr/local/bin/cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add $PWD/cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

" auto-pair
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap { {}<LEFT>

" set window position for ycm
set splitbelow
set splitright

" set colorscheme for vim
if has('termguicolors')
  set termguicolors
endif

" apply color scheme
colorscheme gruvbox
set background=dark

let mapleader = "\<space>"

" ...........................................................................
" rust-lang/rust.vim
" ...........................................................................
" let g:rustfmt_autosave = 1

" ...........................................................................
" github/copilot.vim
" ...........................................................................
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" ...........................................................................
" airblade/vim-gitgutter
" ...........................................................................
" Set delay for gitgutter
set updatetime=100

" ...........................................................................
" tpope/vim-fugitive
" ...........................................................................
" Display git blame via tpope/vim-fugitive
nnoremap <Leader>gbl :Git blame<CR>

" ...........................................................................
" lambdalisue/fern.vim
" ...........................................................................
" Source a configuration file
source ~/.vim/fern.vim

" ...........................................................................
" ycm-core/YouCompleteMe
" ...........................................................................
" Source a configuration file
" source ~/.vim/ycm.vim

" ...........................................................................
" neoclide/coc.nvim
" ...........................................................................
" Source a configuration file
source ~/.vim/coc.vim

