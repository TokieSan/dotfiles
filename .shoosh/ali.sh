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
alias p='sudo pacman'
alias du='du -h'
alias gitadd='git add -f'
alias gitpush='git push origin main'
alias gitcommit='git commit -m'
alias kilall='killall'
alias quitX='pkill -15 Xorg'
alias rcrdffmpeg='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default'
alias ll='ls -all'
alias df='df -h'
getAudio() {
	ffmpeg -i "${1}" -vn -q:a 0 "${1}".ogg
}

prj() {
	case ${1} in
		comp)
			"touch" "${2}.in" & "cp" "/home/elt0khy/.shoosh/bases/comp.cpp" "${2}.cpp" & "vim" "${2}.cpp" "+79"
			;;

		cpp)
			"cp" "/home/elt0khy/.shoosh/bases/base.cpp" "${2}.cpp" & "vim" "${2}.cpp"
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
	case ${1} in
		math)
			"ranger" "/home/elt0khy/shared/study/math/calc2"
			;;
		cs)
			"ranger" "/home/elt0khy/shared/study/cs/cs2"
			;;
		rhet)
			"ranger" "/home/elt0khy/shared/study/extra/rhet/1010"
			;;
		core)
			"ranger" "/home/elt0khy/shared/study/extra/core"
			;;
		phys)
			"ranger" "/home/elt0khy/shared/study/phys/1"
			;;
		*)
			"ranger" "/home/elt0khy/shared/${1}"
			;;
	esac
}

compress(){
	"cp" "${1}" "old-${1}"
	convert ${1} -quality ${3}% -resize ${2}\> ${1} 
}
alias vi='nvim'
alias mon='sh /home/elt0khy/.shoosh/new_monitor.sh'
calc() { echo "scale=2;$1" | bc; }
alias sexkb='setxkbmap -model pc104 -layout us,ar -option grp:caps_toggle'
alias full_system_backup_without_home='sudo rsync -aAXHx --info=progress2 --delete --exclude={"/home","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/dhcpcd/*","/mnt/backup"} / /mnt/backup'
dummycam() { ffmpeg -re -stream_loop -1 -i "${1}" -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video2; }
alias sv='sudo vim'
alias tunnelfast='sudo sshuttle --method=tproxy --remote=eltokhy@52.188.119.232 0.0.0.0/0 ::/0 --exclude=213.181.225.44 --exclude=52.188.119.232'
alias fastHotspot='nmcli wlan0 wifi hotspot ifname wlp4s0 ssid GNUHostpot password 8888#8888'
alias code='codium'
