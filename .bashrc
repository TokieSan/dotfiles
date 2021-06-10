#
# ~/.bashrc
#

# If not running interactively, don't do anything

export PS1='\w ' 

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
. "/home/elt0khy/.shoosh/ali.sh"
. "/home/elt0khy/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'


(cat ~/.cache/wal/sequences &)
clear

force_color_prompt=yes
ulimit -s 2000123
# set GTK_USE_PORTAL=1 
export QT_QPA_PLATFORMTHEME=qt5ct
export DXVK_HUD=devinfo,fps
# PS1='[\u@\h \W]\$ '

