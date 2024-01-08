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

newmon(){
    case ${1} in
        r)
            "xrandr" "--output" "HDMI-0" "--left-of" "DP-2" "--mode" "1920x1080"            ;;
        l)
            "xrandr" "--output" "HDMI-0" "--right-of" "DP-2" "--mode" "1920x1080" "--rotate" "left"
            ;;
        *)
            "xrandr" "--output" "HDMI-0" "--right-of" "DP-2" "--mode" "1920x1080" "--rotate" "normal"
            ;;
    esac
    feh --bg-max /home/elt0khy/Documents/Random\ GIMP/Arch\ Background2.png &
}

op(){
	case ${1} in
		music)
			"ranger" "/home/elt0khy/shared/Music/Music/"
			;;
        real)
			"ranger" "/home/elt0khy/shared/study/math/anal2"
			;;
        net)
			"ranger" "/home/elt0khy/shared/study/cs/net/"
            ;;
        dis)
			"ranger" "/home/elt0khy/shared/study/cs/dis/"
			;;
        econ)
			"ranger" "/home/elt0khy/shared/study/engr/econ/"
            ;;
        dsp)
			"ranger" "/home/elt0khy/shared/study/cs/dsp/"
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
alias sexkb='setxkbmap -layout us,ara -option grp:caps_toggle; xsetwacom set "Wacom One by Wacom S Pen eraser" MapToOutput HEAD-1; xsetwacom set "Wacom One by Wacom S Pen stylus" MapToOutput HEAD-1;'
alias full_system_backup_without_home='sudo rsync -aAXHx --info=progress2 --delete --exclude={"/home","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/dhcpcd/*","/mnt/backup"} / /mnt/backup'
dummycam() { ffmpeg -re -stream_loop -1 -i "${1}" -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video2; }
alias sv='sudo vim'
alias tunnelfast='sudo sshuttle --method=tproxy --remote=eltokhy@52.188.119.232 0.0.0.0/0 ::/0 --exclude=213.181.225.44 --exclude=52.188.119.232'
fastHotspot() { nmcli dev wifi hotspot ifname wlan0 ssid GNUHotspot password ${hotspotPwd}; }
export -f fastHotspot

extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1" ;;
      *.tar.gz) tar xvzf "$1" ;;
      *.bz2) bunzip2 "$1" ;;
      *.rar) unrar x "$1" ;;
      *.gz) gunzip "$1" ;;
      *.tar) tar xvf "$1" ;;
      *.tbz2) tar xvjf "$1" ;;
      *.tgz) tar xvzf "$1" ;;
      *.zip) unzip "$1" ;;
      *.Z) uncompress "$1" ;;
      *.7z) 7z x "$1" ;;
      *) echo "Unknown archive format: $1" ;;
    esac
  else
    echo "Not a valid file: $1"
  fi
}

alias x='extract'
alias code='codium'
alias c='g++ -Wall -Wconversion -Wfatal-errors -g -std=c++17 -fsanitize=undefined,address -DLOCAL'
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
alias duf='du -h --max-depth=1'
alias duh='du -sh * | sort -hr'
alias gitadd='git add -f'
alias gitpush='git push origin main'
alias gitcommit='git commit -m'
alias kilall='killall'
alias quitX='pkill -15 Xorg'
alias rcrdffmpeg='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default'
alias ll='ls -alh --color=auto -h'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias cal='cal --three'
alias df='df -h'
alias deemix='deemix --bitrate FLAC -p .'
alias harwest='~/.local/bin/harwest'
alias rgrep='rga'
alias xx="curl -F 'f:1=<-' ix.io"
alias zazyoutubeaudio='youtube-dl -x -f bestaudio -o "%(title)s.%(ext)s"'
alias oggflac='find . -name *flac -exec oggenc -q 7 {} \;'
alias oggflacrm='find . -name *flac -exec rm {} \;'
# So I can launch fhgaacenc with a single command, fucking hate fhgaacenc
alias fhgaacenc='wine ~/.wine/drive_c/fhgaacenc/fhgaacenc.exe'
alias pkgbysize='expac "%n %m" -l'\n' -Q $(pacman -Qq) | sort -rhk 2 | less'
alias cl='cd ~/libreoffice/libreoffice/'
alias myip='curl ipinfo.io/ip'
alias recent='ls -lt | head'


# Turn off a few pesky warnings (well, actually all of them!):
export WINEDEBUG=-all
