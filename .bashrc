#
# ~/.bashrc
#

# If not running interactively, don't do anything

export PS1='\w ' 

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
. "/home/elt0khy/.shoosh/ali"

. "/home/elt0khy/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

(cat ~/.cache/wal/sequences &)


export QT_QPA_PLATFORMTHEME=qt5ct

# PS1='[\u@\h \W]\$ '

