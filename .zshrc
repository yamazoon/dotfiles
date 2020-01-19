#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# setopt auto_list
# setopt auto_menu
# zstyle ':completion:*:default' menu select=1
# export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# setopt auto_cd
# export LANG=ja_JP.UTF-8
# HISTFILE=$HOME/.zsh-history
# HISTSIZE=1000000
# SAVEHIST=1000000
# setopt share_history

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# https://sanoto-nittc.hatenablog.com/entry/2017/12/16/213735
autoload -Uz compinit && compinit

# time start-end
export PREV_COMMAND_END_TIME
export NEXT_COMMAND_BGN_TIME

function show_command_end_time() {
  PREV_COMMAND_END_TIME=`date "+%H:%M:%S"`
  RPROMPT="%F{green}${PREV_COMMAND_END_TIME} -         %f"
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd show_command_end_time

show_command_begin_time() {
  NEXT_COMMAND_BGN_TIME=`date "+%H:%M:%S"`
  RPROMPT="%F{green}${PREV_COMMAND_END_TIME} - ${NEXT_COMMAND_BGN_TIME}%f"
  zle .accept-line
  zle .reset-prompt
}
zle -N accept-line show_command_begin_time


# time
PROMPT="%F{green}[%D{%Y-%m-%d %H:%M:%S}]%f"
RPROMPT="%(?..%F{red}-%?-)%F{green}[%1(v|%F{yellow}%1v%F{green} |)%n:%~]%f"
# 時刻更新                                                                                          
TRAPALRM () { zle reset-prompt }
TMOUT=1
