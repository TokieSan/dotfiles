cp /home/elt0khy/.vimrc  /home/elt0khy/shared/config_backups/
cp /home/elt0khy/dwm/config.h /home/elt0khy/shared/config_backups/
cp /home/elt0khy/.bashrc /home/elt0khy/shared/config_backups/
cp /home/elt0khy/.xbindkeysrc /home/elt0khy/shared/config_backups/
pacman -Qqe |xargs > /home/elt0khy/pkglist.txt
cp /home/elt0khy/pkglist.txt /home/elt0khy/shared/config_backups/
cp /usr/share/sddm/scripts/Xsetup /home/elt0khy/shared/config_backups/
cp /usr/share/sddm/scripts/Xsession /home/elt0khy/shared/config_backups/
cp /home/elt0khy/.shoosh/* /home/elt0khy/shared/config_backups/.shoosh
cp /home/elt0khy/.config/nvim/init.vim /home/elt0khy/shared/config_backups/
