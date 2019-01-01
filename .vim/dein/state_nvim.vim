if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/tetsuya/.config/nvim,/etc/xdg/nvim,/Users/tetsuya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.3.2/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/tetsuya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/tetsuya/.config/nvim/after,/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/tetsuya/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/tetsuya/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/tetsuya/.config/nvim,/etc/xdg/nvim,/Users/tetsuya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.2/share/nvim/runtime,/Users/tetsuya/dotfiles/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/tetsuya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/tetsuya/.config/nvim/after'
filetype off
