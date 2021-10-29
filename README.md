# cheatsheet.vim
Quickly invoke [cht.sh](https://github.com/chubin/cheat.sh)

## Installation
### [Vim Plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'shoumodip/vim-cheatsheet'
PlugInstall
```

### [Vundle](https://github.com/VundleVim/Vundle.vim)
```vim
Plugin 'shoumodip/vim-cheatsheet'
PluginInstall
```

### [Dein](https://github.com/Shougo/dein.vim)
```vim
call dein#add('shoumodip/vim-cheatsheet')
call dein#install()
```

### [Minpac](https://github.com/k-takata/minpac)
```vim
call minpac#add('shoumodip/vim-cheatsheet')
```

### Packages
```console
$ git clone https://github.com/shoumodip/vim-cheatsheet ~/.vim/pack/plugins/start/
$ git clone https://github.com/shoumodip/vim-cheatsheet ~/.config/nvim/pack/plugins/start/
```

## Usage
- Use `:Cheatsheet` to search for programming language cheetsheets
- Use `:Cheatsheet!` to search for coreutil cheetsheets
- See `:h cheatsheet` to get the offline help
- Create mappings to speed up your workflow

```vim
noremap <silent> <leader>l :Cheatsheet<cr>
noremap <silent> <leader>c :Cheatsheet!<cr>
```

## See also
- [cheat.sh-vim](https://github.com/dbeniamine/cheat.sh-vim) for a more full-featured alternative
