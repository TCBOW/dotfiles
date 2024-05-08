"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off vi compatible mode
set nocompatible

" Prevent short messages
set shortmess+=I

" Set to auto read when a file is changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the wild menu
set wildmenu

"Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=b,s,h,l,<,>,[,]

set number      " Line number
set cursorline  " Cursor line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LF or CR/LF
set fileformats=unix,dos,mac

" Encodings
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis

if has('win32')
    set termencoding=cp932
else
    set termencoding=utf-8
endif

" Syntax highlight
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

" Show invisible characters
set list
set listchars=tab:>>,trail:.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set noautoindent    " Turn off auto indent
set nosmartindent   " Turn off smart indent
set nowrap          " Turn off wrap line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cheet sheet 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    source ~/git/devenv/cs/.vimrc_cs
catch
    " No Cheet Sheet files. "
endtry
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ Line:\ %l\ \ Column:\ %c\ \ %{(&fenc!=''?&fenc:&enc)}\ \ %{&ff}

" ------------ Search
" デフォルトはmagicモード
set magic

" デフォルトは大文字小文字を無視
set ignorecase

" 賢く大文字小文字を区別
set smartcase

" インクリメンタルサーチ
set incsearch

" すべてのマッチ箇所をハイライト
set hlsearch

" ファイル端に達しても、一周して検索を続行
set wrapscan

nnoremap <Leader>gg :vim //j <C-r>=expand('%:h').'/**'<CR> <CR>:copen 8<CR><C-w>J
nnoremap <Leader>gG :vim //j <C-r>=expand('%:h').'/../**'<CR> <CR>:copen 8<CR><C-w>J
nnoremap <Leader>q :copen 8<CR>
nnoremap <C-l> :nohlsearch<CR><C-l>

" ------------
nnoremap <Space> zA
" ["]で現在のディレクトリ 以下を再起的にgrepしてwindowに検索結果を表示
nnoremap " *:grep /<C-r>// ** \|cw
set wildignore+=bin/**,obj/**,*.md,*.o,tags,*.bin,*.zip,*.txt,Makefile,*.json
