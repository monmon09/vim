" はじめにやっておいたほうが無難な設定たち
" 文字コードをutf8に設定
set encoding=utf-8
set fileencodings=utf-8,euc-jp,shift-jis,ucs-bom,iso-2022-jp,cp932,latin1

" vi 互換モードで動作させない
set nocompatible

" ファイルタイプ検出及び各種プラグインを有効にする
filetype plugin indent on

" Vim Script 内で使用するエンコーディングを指定する
scriptencoding

" 表示設定------------------------------
" 行番号を表示する
set number

" 編集中のファイル名を表示する
set title

" 括弧入力時に対応する括弧を表示
set showmatch

" コードカラー
syntax on

" インデントを半角スペース4つに設定
set tabstop=4

" オートインデント
set smartindent

" 右端で折り返さな" ファイルエンコーディングの自動判別対象を指定するい
set nowrap

" カーソル位置が右下に表示される
set ruler

" タブ押下時の空白数
set softtabstop=4

" タブ押下時にホワイトスペースを挿入する
set expandtab

" インデントに使われる空白の数
set shiftwidth=4

" クリップボードを共有する
set clipboard=unnamed

" 検索設定------------------------------
" 大文字/小文字の区別なしで検索
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" ハイライトサーチを有効にする
set hlsearch

" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>

" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
"imap [ []<left>
"imap ( ()<left>
"imap { {}<left>

" コントロール設定
" ２回esc を押したら検索のハイライトをヤメる
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" マウス使えるように
set mouse=a

" C 言語スタイルのインデントを自動で入れる
set cindent

" 入力中のコマンドを表示する
set showcmd

" バックアップをとらない
set nobackup

" バックスペース押下時の挙動を変更する
set backspace=indent,eol,start

" 不可視文字を表示する
set list

" タブと半角スペースと
set lcs=tab:>.,trail:⨆,extends:\

highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

" 全角スペースを可視化する
"augroup highlightIdegraphicSpace
"    autocmd!
"    autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
"    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
"augroup END
"function! ZenkakuSpace()
"   highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
"endfunction
"
"if has('syntax')
"    augroup ZenkakuSpace
"        autocmd!
"        "autocmd ColorScheme       * call ZenkakuSpace()
"        autocmd VimEnter,WinEnter * match ZenkakuSpace /□/
"    augroup END
"    call ZenkakuSpace()
"endif

" 行のハイライト
set cursorline

" インサートモード開始時にカーソルを変更する
let &t_SI = "\e]50;CursorShape=1\x7"

" インサートモードが完了したらカーソルを戻す
let &t_EI = "\e]50;CursorShape=0\x7"
