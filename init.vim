set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030                    
syntax on
set cursorline
set wrap
set wildmenu
set number
set relativenumber

set hlsearch                     
set incsearch

map S :w<CR>                                         
map Q :q<CR>
map R :source $MYVIMRC<CR>

nmap <silent> <F9> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F9> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F10> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F10> <Plug>StopMarkdownPreview    " for insert mode


call plug#begin('D:\neovim\Neovim\plug')
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'



call plug#end()
