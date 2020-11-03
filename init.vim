set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030                    
syntax on
set cursorline
set wrap
set wildmenu

set hlsearch                     
set incsearch

map S :w<CR>                                         
map Q :q<CR>
map R :source $MYVIMRC<CR>

" F6自动格式化
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>

" 自动执行：按一下F5，自动执行代码：utopep8()
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		  exec "!g++ % -o %<"
		  exec "!time ./%<"
	elseif &filetype == 'cpp'
		 exec "!g++ % -o %<"
		 exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		 :!time bash %
	elseif &filetype == 'python'
		  exec "!clear"
		  exec "!time python3 %"
	elseif &filetype == 'html'
		  exec "!firefox % &"
	elseif &filetype == 'go'
		" exec "!go build %<"
		 exec "!time go run %"
	elseif &filetype == 'mkd'
		  exec "!~/.vim/markdown.pl % > %.html &"
		  exec "!firefox %.html &"
	endif
endfunc

" 分屏原始操作：ctrl+w 上下左右，ctrl+w c关闭当前分屏上下分割当前打开的文件。
" 关闭当前窗口。
" Ctrl+w c
" 关闭当前窗口，如果只剩最后一个了，则退出Vim。
" Ctrl+w q
" 上下分割当前打开的文件。
" Ctrl+w s
" 上下分割，并打开一个新的文件。
" :sp filename
" 左右分割当前打开的文件。 
" Ctrl+w v
" 左右分割，并打开一个新的文件。
" :vsp filename
"让所有的屏都有一样的高度。
"Ctrl+w =
"增加高度。
"Ctrl+w +
"减少高度。
"Ctrl+w -
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 为python的特殊配置有：
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99


nmap <silent> <F9> <Plug>MarkdownPreview       
imap <silent> <F9> <Plug>MarkdownPreview       
nmap <silent> <F10> <Plug>StopMarkdownPreview  
imap <silent> <F10> <Plug>StopMarkdownPreview  


call plug#begin('D:\neovim\Neovim\plug')
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" vim-autopep8,自动格式化
Plug 'tell-k/vim-autopep8'

"vim-airline 底部状态栏优化
Plug 'bling/vim-airline'

"*************代码补全******************
"ncm2 代码补全
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'HansPinckaers/ncm2-jedi'

"jedi-vim 作用同样是代码补全,这里协助ncm2,仅开启方法参数提醒
Plug 'davidhalter/jedi-vim'

call plug#end()
