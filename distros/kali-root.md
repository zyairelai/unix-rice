# Kali XFCE Setup
- kali-linux-2022.2-virtualbox-amd64.ova
- kali-linux-2022.2-vmware-amd64.7z

### Adding Debian Repository
- `nano /etc/apt/sources.list`
```
deb http://ftp.debian.org/debian stable main contrib non-free
```

### Must HAVE Apps!!!
Personal Setup
```
apt install python3-pip neofetch tree htop fonts-noto-color-emoji rofi ranger zsh tmux ufw gobuster golang-go
```

### RustScan
```
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan
```

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

### Auto Login
- `nano /etc/lightdm/lightdm.conf`
```
[SeatDefaults]
autologin-guest=false
autologin-user=root
autologin-user-timeout=0
```

### Zsh Setup
Don't forget to add tilix shortcut
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
nano ~/.oh-my-zsh/lib/directories.zsh
ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
echo "\n. /etc/profile.d/vte.sh" >> ~/.zshrc
```

### XFCE4 Desktop Setup
```
mkdir ~/.config/rofi && mkdir ~/.config/polybar && mkdir ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/parrot.zsh-theme -O ~/.oh-my-zsh/custom/themes/parrot.zsh-theme
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-desktop.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-keyboard-shortcuts.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-power-manager.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfwm4.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
```

### Personal Terminal Shortcuts
```
ln -s /bin/clear /bin/c
ln -s /bin/htop /bin/h
ln -s /bin/tree /bin/t
ln -s /bin/ranger /bin/r
ln -s /bin/neofetch /bin/n
ln -s /bin/python3 /bin/py
ln -s /bin/screen /bin/sc
```
### Unzip Rockyou
```
gzip -d /usr/share/wordlists/rockyou.txt.gz
```

### Tiling Windows Manager
```
go install github.com/blrsn/zentile@latest
cp ~/go/bin/zentile /usr/sbin/
```

### Rename kali to VirtualBox
- `nano /etc/hostname`
- `nano /etc/hosts`
