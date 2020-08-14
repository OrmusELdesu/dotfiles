# Windows 10 64-bit Dotfiles

This repository contains my important configuration files for each machine running the Z-shell.

## default shell
- there are two ways of modifying the cygwin shell at this current point in time.
   - one is to modify `/etc/nsswitch.conf` to specify `db_shell: /bin/zsh`
   - another is to create a `/etc/passwd` and `/etc/group` files using `mkpasswd -c > /etc/passwd` and `mkgroup -c > /etc/group`
- and then modifying the contents of the file to specify the default shell to `/bin/zsh`
- then append a dash `-` to the end of the cygwin shortcut `.lnk` file to specify standard input
- if neither approach has worked then we resort to the method below
- append `/usr/bin/zsh -l` to the windows desktop shortcut .lnk file 

## environment variables
- now that the shell is configured, the commands are no longer available and displays an error message `command not found`
- to fix this, we add extra environment paths to windows:
   - `Control Panel > System > Advanced System Settings > Environment Variables`
- create a new variable for the current user called `CYGWIN_HOME`, and add the path to your cygwin installation `D:/cygwin64`
- append to the end of `Path` variable for the current user the following:
   - `%CYGWIN_HOME%\bin;`
   - `%CYGWIN_HOME%\sbin;`
   - `%CYGWIN_HOME%\usr\bin;`
   - `%CYGWIN_HOME%\usr\sbin;`
   - `%CYGWIN_HOME%\usr\local\bin;`
   - `%CYGWIN_HOME%\usr\local\sbin`

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
