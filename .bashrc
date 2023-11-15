#
# ~/.bashrc
#

# If not running interactively, don't do anything
git_branch() {
    if [[ $PWD != $HOME ]]; then
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
    fi
}
export PS1="\w \$(git_branch)"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
. "/home/elt0khy/.shoosh/ali.sh"
. "/home/elt0khy/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

export PATH=$PATH:~/.shoosh/
export PATH=$PATH:~/scripts/
export PATH=$PATH:~/.local/bin/
export PATH=$PATH:/home/elt0khy/.cargo/bin/
export PATH=$PATH:/root/.local/bin/

(cat ~/.cache/wal/sequences &)
clear

force_color_prompt=yes
ulimit -s 2000123
# set GTK_USE_PORTAL=1 
export QT_QPA_PLATFORMTHEME=qt5ct
export DXVK_HUD=devinfo,fps
export _JAVA_AWT_WM_NONREPARENTING=1
export CCACHE_COMPRESS=1
export CCACHE_DIR=/home/elt0khy/shared/.ccache
export VDPAU_DRIVER=radeonsi vainfo
#export QT_DEVICE_PIXEL_RATIO=2
#export QT_AUTO_SCREEN_SCALE_FACTOR=true

# PS1='[\u@\h \W]\$ '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/elt0khy/shared/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#	eval "$__conda_setup"
#else
#	if [ -f "/home/elt0khy/shared/anaconda3/etc/profile.d/conda.sh" ]; then
#		. "/home/elt0khy/shared/anaconda3/etc/profile.d/conda.sh"
#	else
#		export PATH="/home/elt0khy/shared/anaconda3/bin:$PATH"
#	fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

