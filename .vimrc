set t_Co=256
set term=xterm-256color
set termencoding=utf-8

syntax on
colorscheme one

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Tabs (2 space indendation)
set tabstop=2
set shiftwidth=2
set autoindent

" General
set nocompatible                  " don't need to be compatible with old vim
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion

set tabstop=2
set softtabstop=2
set expandtab
