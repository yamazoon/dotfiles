" basical
map <C-e> :q!<CR>
map <C-w> :wq!<CR>
map <C-l> gt
map <C-h> gT

" describe number
set number

" clipboard
set clipboard+=unnamed
set clipboard=unnamed,autoselect

" mouse
set ttymouse=xterm2
set mouse=a

" |sh
vnoremap <Space><CR> :!sh<CR>    # 行選択中に実行
nnoremap <Space><CR> V:!sh<CR>   # 行選択していない状態から実行

" color
syntax enable
set background=light
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
augroup TransparentBG
  	autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none 
augroup END

" NeoBundle
" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'scrooloose/nerdtree'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
NeoBundleCheck

" NeoBundle
map <C-n> :NERDTreeToggle<CR>
cd /Users/tetsuya/yamazon/sandbox
