" fuyou-default-plugin
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

" kunren
nnoremap <Up> '
nnoremap <Down> '
vnoremap <Up> '
vnoremap <Down> '
nnoremap <left> ^
nnoremap <right> $
vnoremap <left> ^
vnoremap <right> $
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

" hidden 未保存時にもバッファを切り替える
set hidden

" esc遠いからjjに
inoremap <silent> jj <ESC>

":h ex-cmd-index でコマンドのヘルプ出せるよ(メモ)

" command-refできるように
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" ctrl-a のときに10進数扱いにする(8進数になるため)
set nrformats=

set imdisable "Esc押下時に英数入力に変更する

set fileencoding=utf-8 " 保存時の文字コード

set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される

set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される

set ambiwidth=double " □や○文字が崩れる問題を解決

" tab -> space
set shiftwidth=4
set softtabstop=4 expandtab

set list " 不可視文字を表示する
set listchars=tab:>_,trail:_  " タブを >--- 半スペを . で表示する
"set listchars+=space:\|

" no indent
set noautoindent
set nosmartindent

" increment search
set incsearch

" kensakukekka-mannnaka
nnoremap n nzz
nnoremap N Nzz

" kensakukekka-highlight
set hlsearch

" ignorecase
set ignorecase

" describe number
set number

" clipboard
set clipboard+=unnamed
"set clipboard=unnamed,autoselect "autoselectを入れるとvisualモードで選択したテキストをクリップボードに入れるため削除
"set clipboard=unnamed

" mouse マウス禁止 -> 解除
"set ttymouse=xterm2
set mouse=a

" color
"syntax enable
colorscheme iceberg

"syntax enable
"set background=dark
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none
"highlight LineNr ctermbg=none
"highlight Folded ctermbg=none
"highlight EndOfBuffer ctermbg=none
"augroup TransparentBG
"	autocmd!
"	autocmd Colorscheme * highlight Normal ctermbg=none
"	autocmd Colorscheme * highlight NonText ctermbg=none
"	autocmd Colorscheme * highlight LineNr ctermbg=none
"	autocmd Colorscheme * highlight Folded ctermbg=none
"	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none 
"augroup END

" mark
nnoremap _ '
vnoremap _ '

" Leaderキー
let g:mapleader = "\<Space>"

" ファイルを閉じる
"nnoremap <Leader>t :wq!
"vnoremap <Leader>t :wq!
nnoremap <Leader>q :q!<CR>
vnoremap <Leader>q :q!<CR>
nnoremap <Leader>w :w!<CR>
vnoremap <Leader>w :w!<CR>
nnoremap <Leader>e :w 
vnoremap <Leader>e :w 

" 編集用一時領域作成
nnoremap <Leader>t :split +enew<CR>
vnoremap <Leader>t :split +enew<CR>

" ファイル比較
vnoremap <Leader>h :vertical diffsplit 
nnoremap <Leader>h :vertical diffsplit 

" 置換
nnoremap <Leader>s :%s#
vnoremap <Leader>s :s#

" ファイルエクスプローラーを開く
nnoremap <Leader>i :VimFilerBufferDir<CR>
vnoremap <Leader>i :VimFilerBufferDir<CR>

" バッファ確認し、入力した数字のバッファに移動
" (移動しない場合はそのままenter)
nnoremap <Leader>l :ls<CR>:b 
vnoremap <Leader>l :ls<CR>:b 

" 今のバッファを保存しないで閉じる
nnoremap <Leader>d :bd!<CR>
vnoremap <Leader>d :bd!<CR>

" 改行を含まない行コピー
nnoremap <Leader>a v$ho0y
vnoremap <Leader>a $ho0y

" ヤンクレジスタから貼り付け
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p

" バッファの場所に移動
nnoremap <Leader>c :cd %:h\|pwd<CR>
vnoremap <Leader>c :cd %:h\|pwd<CR>

" ハイライトを消す
nnoremap <Leader>n :noh<CR>
vnoremap <Leader>n :noh<CR>

" 現在行に書いたコマンドの実行結果を持ってくる
vnoremap <Leader><CR> :!sh<CR>
nnoremap <Leader><CR> V:!sh<CR>
vnoremap <Leader>p<CR> :!pwsh -nol<CR>
nnoremap <Leader>p<CR> V:!pwsh -nol<CR>

" date 出力
noremap <Leader>@ :.!date<CR>:normal o<CR>

" calender 出力
noremap <Leader>\ :.!cal -h<CR>:normal O<CR>

" vimgrep
autocmd QuickFixCmdPost *grep* cwindow
nnoremap <Leader>g :vim // **
vnoremap <Leader>g :vim // **
nnoremap 8 :cn<CR>
vnoremap 8 :cn<CR>
nnoremap 7 :cp<CR>
vnoremap 7 :cp<CR>

" 現在のバッファ内容をコピー
nnoremap <Leader>y :%y<CR>
vnoremap <Leader>y :%y<CR>

" 現在のバッファ内容をコピー
nnoremap <Leader>o o<ESC>
vnoremap <Leader>o o<ESC>
"
" kensaku kensuu count
nnoremap <expr> <Leader>/ _(":%s/<Cursor>/&/gn")
vnoremap <expr> <Leader>/ _(":%s/<Cursor>/&/gn")

function! s:move_cursor_pos_mapping(str, ...)
    let left = get(a:, 1, "<Left>")
    let lefts = join(map(split(matchstr(a:str, '.*<Cursor>\zs.*\ze'), '.\zs'), 'left'), "")
    return substitute(a:str, '<Cursor>', '', '') . lefts
endfunction

function! _(str)
    return s:move_cursor_pos_mapping(a:str, "\<Left>")
endfunction



" プラグイン

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NeoBundle
"" Note: Skip initialization for vim-tiny or vim-small.
" if 0 | endif
"
" if &compatible
"   set nocompatible               " Be iMproved
" endif
"
" " Required:
" set runtimepath+=~/.vim/bundle/neobundle.vim/
"
" " Required:
" call neobundle#begin(expand('~/.vim/bundle/'))
"
" " Let NeoBundle manage NeoBundle
" " Required:
" NeoBundleFetch 'Shougo/neobundle.vim'
"
" " My Bundles here:
" " Refer to |:NeoBundle-examples|.
" " Note: You don't set neobundle setting in .gvimrc!
"
" " NERDTree
" " NeoBundle 'scrooloose/nerdtree'
"
" " indent
" NeoBundle 'Yggdroot/indentLine'
"
" " expand v
" NeoBundle 'terryma/vim-expand-region'
"
" "comment
" " NeoBundle 'tpope/vim-commentary'
"
" "surround.vim
" NeoBundle 'tpope/vim-surround'
"
" " project
" "NeoBundle 'vimplugin/project.vim'
"
" " unite.vim
" NeoBundle 'Shougo/unite.vim'
"
" " filer
" NeoBundle 'Shougo/vimfiler'
"
" " preview markdown with vim
" NeoBundle 'kannokanno/previm'
"
" " iceberg
" NeoBundle 'cocopon/iceberg.vim'
"
" call neobundle#end()
"
" " Required:
" filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
"NeoBundleCheck
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree
" map <C-n> :NERDTreeToggle<CR>




"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tetsuya/dotfiles/.vim/dein')
  call dein#begin('/Users/tetsuya/dotfiles/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
   call dein#add('Shougo/unite.vim')
   call dein#add('Shougo/vimfiler')
   "call dein#add('Yggdroot/indentLine')
   "call dein#add('cocopon/iceberg.vim')
   "call dein#add('kannokanno/previm')
   call dein#add('terryma/vim-expand-region')
   call dein#add('tpope/vim-surround')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" プラグイン関連設定

" expand v
vmap m <Plug>(expand_region_expand)
vmap M <Plug>(expand_region_shrink)

" vimfiler safe mode off
let g:vimfiler_safe_mode_by_default = 0

" previm
"autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
"let g:previm_open_cmd = 'open -a "Google Chrome"'
"let g:previm_disable_default_css = 1
"let g:previm_custom_css_path = '~/dotfiles/.vim/previm/markdown.css'
"nnoremap <Leader>m :PrevimOpen<CR>
"vnoremap <Leader>m :PrevimOpen<CR>


