alias fucking='sudo'
alias pls='sudo "$BASH" -c "$(history -p !!)"'
alias viminstall='vim +PluginInstall'
alias pauseplay='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause'
alias previousmusic='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous'
alias nextmusic='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next'
alias flashcard='anki'
alias printerconfig='system-config-printer'
alias vim='nvim'
alias airdots='sh /home/elt0khy/.shoosh/airdots.sh'
#alias rm='trash-put'
alias pulsuspendrestore='systemctl restart --user pulseaudio'
alias pp='pacman -Ss'
alias p='pacman -S'
alias pr='pacman -R'
alias prs='pacman -Rs'
alias gitadd='git add -f'
alias gitpush='git push origin main'
alias gitcommit='git commit -m'
alias kilall='killall'
alias quitX='pkill -15 Xorg'
alias rcrdffmpeg='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default'
alias ll='ls -all'
alias prjcpp='cp /home/elt0khy/.shoosh/bases/base.cpp'
search(){
	"links" "https://duckduckgo.com/?q=${1}"
}

op(){
	"ranger" "/home/elt0khy/shared/${1}"
}
alias mon='sh /home/elt0khy/.shoosh/new_monitor.sh'
alias cln='history -a && urxvt'
