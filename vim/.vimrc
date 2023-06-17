"Plug
call plug#begin('~/.vim/plugged')
" 插件默认目录:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" 你可以自定义目录
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - 不要使用 'plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim' 		" Base16 theme
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sainnhe/sonokai'			" Monokai Pro-like scheme
Plug 'tanvirtin/monokai.nvim'
Plug 'srcery-colors/srcery-vim'


call plug#end()

"encoding
set encoding=utf-8	" 字符集

set nocompatible	" 关闭对vi兼容 
syntax on 		" 开启语法高亮
set novisualbell	" 关闭可视化l响铃
set noerrorbells	" 关闭错误响铃

" theme
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:molokai_original = 0

if has('gui_running')
    colorscheme base16-gruvbox-dark-hard
elseif exists("+termguicolors")
    set termguicolors
    " The commands below are needed for tmux + termguicolors
    " This is only necessary if you use "set termguicolors".
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " fixes glitch? in colors when using vim with tmux
    set background=dark
    set t_Co=256

    colorscheme vim-monokai-tasty
    " colorscheme sonokai
    " let g:sonokai_style = 'shusia'

elseif &t_Co < 256
    colorscheme molokai
    set nocursorline " looks bad in this mode
endif

" if &diff
"     colorscheme foobar
" endif


" show
set number      	" 显示行号
set relativenumber      " 显示相对行号
set ruler		" 显示当前光标行号和列
set showmode		" 显示当前模式
set showmatch		" 显示匹配的括号
"set cursorline		" 突出显示当前行


" tab
set autoindent           " 自动缩进
" set expandtab		 " 将<tab>符号转为空格
set smarttab		 " 设置该值后，行首tab，为shiftwidth的值，其他地方为tabstop的值

"set shiftround		 " 在一般模式下键入>>整个缩进shiftwidth长度，<<反向操作，==与上行对齐,插入模式C-T,C-D	
"set shiftwidth=4	" 缩进空格数

" search
set smartcase		" 搜索时，输入大写则严格按照大小写匹配，输入小写则忽略大小写
set hlsearch		" 高亮搜索项
set incsearch           " 每输入一个字符,就自动跳转到相应的字符

