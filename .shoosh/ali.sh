. /home/elt0khy/.shoosh/private.sh
rmtests() {
	mv *test* ~/myBlackHole/tests/
	rm -rf *.out
	mv *.pdf ~/myBlackHole/pdf/
	mv *.cpp ~/myBlackHole/cpp/
	mv *.png ~/myBlackHole/png/
	mv *.jpg *.jpeg ~/myBlackHole/jpg/
	mv *.mp4 *.mkv ~/myBlackHole/videos/
}
getAudio() {
	ffmpeg -i "${1}" -vn -q:a 0 "${1}".ogg
}
mkcont(){
	mkdir $1
	touch $1/A.cpp
	touch $1/B.cpp
	touch $1/C.cpp
	touch $1/D.cpp
	touch $1/E.cpp
	touch $1/F.cpp
	cd $1
}
contestdone() {
	mkdir ../archive/"${1}"
	mv * ../archive/"${1}"/
	rm .cph/*
}

folder(){
	mkdir "${1}"
	cd "${1}"
}

search(){
	"links" "https://duckduckgo.com/?q=${1}"
}

op(){
	case ${1} in
		music)
			"ranger" "/home/elt0khy/shared/Music/Music/"
			;;
        real)
			"ranger" "/home/elt0khy/shared/study/math/real/"
			;;
        arch)
			"ranger" "/home/elt0khy/shared/study/cs/arch/"
            ;;
        os)
			"ranger" "/home/elt0khy/shared/study/cs/os/"
			;;
        mech)
			"ranger" "/home/elt0khy/shared/study/engr/mech/"
            ;;
        swe)
			"ranger" "/home/elt0khy/shared/study/cs/swe/"
			;;
		scr)
			"ranger" "/home/elt0khy/Documents/scr"
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
alias mon='sh /home/elt0khy/.shoosh/new_monitor.sh'
calc() { echo "scale=2;$1" | bc; }
alias updatesty='cd /usr/share/texmf/ ; sudo mktexlsr'
alias sexkb='setxkbmap -layout us,ar -option grp:caps_toggle'
alias full_system_backup_without_home='sudo rsync -aAXHx --info=progress2 --delete --exclude={"/home","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/dhcpcd/*","/mnt/backup"} / /mnt/backup'
dummycam() { ffmpeg -re -stream_loop -1 -i "${1}" -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video2; }
alias sv='sudo vim'
alias tunnelfast='sudo sshuttle --method=tproxy --remote=eltokhy@52.188.119.232 0.0.0.0/0 ::/0 --exclude=213.181.225.44 --exclude=52.188.119.232'
fastHotspot() { nmcli dev wifi hotspot ifname wlan0 ssid GNUHotspot password ${hotspotPwd}; }
export -f fastHotspot

alias code='codium'
alias c='g++ -Wall -Wconversion -Wfatal-errors -g -std=c++14 \
-fsanitize=undefined,address -DLOCAL'
alias weather='curl ping.gg'
alias epic='rare'
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
alias ll='ls -all --color=auto -h'
alias ls='ls --color=auto'
alias cal='cal --three'
alias df='df -h'
alias deemix='deemix --bitrate FLAC -p .'
alias harwest='~/.local/bin/harwest'
alias rgrep='rga'
alias xx="curl -F 'f:1=<-' ix.io"
alias zazyoutubeaudio='youtube-dl -x -f bestaudio -o "%(title)s.%(ext)s"'
alias instaload='instaloader --stories --highlights --tagged --login elt0khy'
alias oggflac='find . -name *flac -exec oggenc -q 7 {} \;'
alias oggflacrm='find . -name *flac -exec rm {} \;'
# So I can launch fhgaacenc with a single command, fucking hate fhgaacenc
alias fhgaacenc='wine ~/.wine/drive_c/fhgaacenc/fhgaacenc.exe'

# Turn off a few pesky warnings (well, actually all of them!):
export WINEDEBUG=-all
