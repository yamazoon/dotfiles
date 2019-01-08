if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/tetsuya/.vim,/usr/local/Cellar/neovim/0.3.2/share/nvim/vimfiles,/usr/local/Cellar/neovim/0.3.2/share/nvim/runtime,/usr/local/Cellar/neovim/0.3.2/share/nvim/vimfiles/after,/Users/tetsuya/.vim/after,/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/tetsuya/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/tetsuya/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/tetsuya/.vim,/usr/local/Cellar/neovim/0.3.2/share/nvim/vimfiles,/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.2/share/nvim/runtime,/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein/after,/usr/local/Cellar/neovim/0.3.2/share/nvim/vimfiles/after,/Users/tetsuya/.vim/after'
