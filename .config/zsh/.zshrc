export PATH="/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"
export EDITOR="/opt/local/bin/vim"
export MYVIMRC="$HOME/.config/vim/vimrc"
export VIMINIT="source $MYVIMRC"
export PROMPT="[%F{cyan}%n%F{white}@%F{208}%m %F{yellow}%1~%F{reset_colour}]"$'\n'"%# "

[[ -f $HOME/.config/zsh/.zalias ]] && source $HOME/.config/zsh/.zalias
[[ -f $HOME/.config/zsh/.zfuncs ]] && source $HOME/.config/zsh/.zfuncs
[[ -f $HOME/.config/zsh/.iterm2_shell_integration.zsh ]] && source $HOME/.config/zsh/.iterm2_shell_integration.zsh

autoload -U colors && colors

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' menu select
zstyle :compinstall filename '/Users/ormus/.config/zsh/.zshrc'

autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots)
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# vi hotkeys for selecting completion options
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
