if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/yu/.config/nvim/init.vim', '/home/yu/.vim/dein/userconfig/plugin.toml', '/home/yu/.vim/dein/userconfig/plugin_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/yu/.vim/userconfig/dein'
let g:dein#_runtime_path = '/home/yu/.vim/userconfig/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/yu/.vim/userconfig/dein/.cache/init.vim'
let &runtimepath = '/home/yu/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/usr/share/upstart/xdg/nvim,/etc/xdg/nvim,/home/yu/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/share/gnome/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/yu/.vim/bundle/neosnippet.vim/,/home/yu/.vim/bundle/neosnippet-snippets/,/home/yu/.vim/bundle/vim-fugitive/,/home/yu/.vim/bundle/ctrlp.vim/,/home/yu/.vim/bundle/vim-colorschemes/,/home/yu/.vim/bundle/nerdtree/,/home/yu/.vim/bundle/minibufexpl.vim/,/home/yu/.vim/bundle/vim-autoclose/,/home/yu/.vim/bundle/syntastic/,/home/yu/.vim/bundle/vimshell_3787e5/,/home/yu/.vim/bundle/.neobundle,/home/yu/.vim/userconfig/dein/repos/github.com/Shougo/vimproc.vim,/home/yu/.vim/userconfig/dein/repos/github.com/Shougo/dein.vim,/home/yu/.vim/userconfig/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/yu/.vim/userconfig/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/gnome/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/yu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/share/upstart/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/yu/.config/nvim/after,/home/yu/.vim/bundle/neobundle.vim/,/home/yu/.vim/dein/repos/github.com/Shougo/dein.vim'
filetype off
