# Windows 10 64-bit Dotfiles

This repository contains my important configuration files for each machine running the Z-shell.

## default shell
- before cloning this repo ensure modify `/etc/passwd` and set the default shell of the current user to `/bin/zsh` so to avoid the bash instance from ruining the configs.
   - `vim /etc/passwd`
   - `user:*:/home/user:/bin/bash` to `user:*:/home/user:/bin/zsh`
   - restart zsh

## vim-plug
- to autoload my plugin manager with the central folder in `~/.config/vim/` the file `plug.vim` needs to be place on `/usr/vim/share/vim/autoload/`
   - `cp plug.vim /usr/vim/share/vim/autoload`
   - restart vim
   - `vim` and `:PlugInstall`

## git-completion
- download the latest `git-completion.zsh` script from the [git repo](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh)
- the zsh completion for git is dependent on `git-completion.bash` so it also must be downloaded from the [git repo](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
- place this two files on `~/.config/git/` and create one symbolic link by the name of `_git` within `/usr/share/zsh/site-functions/`
- `ln -s git-completion.zsh /usr/share/zsh/site-functions/_git`
