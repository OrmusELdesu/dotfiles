export PATH="/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/cygdrive/d/texlive/2019/bin/win32:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"
export EDITOR="/opt/local/bin/vim"
export VIMHOME="$HOME/.config/vim"
export MYVIMRC="$HOME/.config/vim/vimrc"
export VIMINIT="source $MYVIMRC"
export PROMPT="[%F{cyan}%n%F{white}@%F{208}%m %F{yellow}%1~%F{reset_colour}]"$'\n'"%# "

[[ -f $HOME/.config/zsh/.zalias ]] && source $HOME/.config/zsh/.zalias
[[ -f $HOME/.config/zsh/.zfuncs ]] && source $HOME/.config/zsh/.zfuncs
[[ -f $HOME/.config/zsh/.iterm2_shell_integration.zsh ]] && source $HOME/.config/zsh/.iterm2_shell_integration.zsh

autoload -U colors && colors

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*:*:git:*' script ~/.config/git/git-completion.bash
zstyle :compinstall filename '/Users/ormus/.config/zsh/.zshrc'

autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots)

HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4000
SAVEHIST=4000

# vi hotkeys for selecting completion options
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
