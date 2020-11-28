alias fucking='sudo'
alias pls='sudo "$BASH" -c "$(history -p !!)"'
alias viminstall='vim +PluginInstall'
alias pauseplay='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause'
alias previousmusic='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous'
alias nextmusic='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next'
alias flashcard='anki'
alias printerconfig='system-config-printer'
alias rm='trash-put'
alias pulsuspendrestore='systemctl restart --user pulseaudio'
p() {
	"sudo" "pacman" "-${1}" "${2}"
}
alias gitadd='git add -f'
alias gitpush='git push origin main'
alias gitcommit='git commit -m'
alias kilall='killall'
alias quitX='pkill -15 Xorg'
alias rcrdffmpeg='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default'
alias ll='ls -all'

prj() {
	case ${1} in
		comp)
			"touch" "in${2}" & "touch" "out${2}" & "cp" "/home/elt0khy/.shoosh/bases/comp.cpp" "${2}.cpp" & "vim" "${2}.cpp"
			;;

		cpp)
			"cp" "/home/elt0khy/.shoosh/bases/base.cpp" "${2}" & "vim" "${2}"
			;;
		*)
			echo -n "Issue"
			;;
	esac
}

search(){
	"links" "https://duckduckgo.com/?q=${1}"
}

op(){
	"ranger" "/home/elt0khy/shared/${1}"
}
alias mon='sh /home/elt0khy/.shoosh/new_monitor.sh'
calc() { echo "scale=2;$1" | bc; }
alias sexkb='setxkbmap -model pc104 -layout us,ar -option grp:caps_toggle'
alias full_system_backup_without_home='sudo rsync -aAXHx --info=progress2 --delete --exclude={"/home","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/dhcpcd/*","/mnt/backup"} / /mnt/backup'
dummycam() { ffmpeg -re -stream_loop -1 -i "${1}" -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video2; }
