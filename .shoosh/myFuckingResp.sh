echo "if not, install darkhttpd"
systemctl start darkhttpd
sudo ln -s /var/lib/pacman/sync/*.db /var/cache/pacman/pkg
sudo -u http darkhttpd /var/cache/pacman/pkg --no-server-id
echo "add (Server = 127.0.0.1:8080) in your fucking /etc/pacman.d/mirrorlist"
