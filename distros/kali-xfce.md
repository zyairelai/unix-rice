# Kali XFCE Setup
kali-linux-2022.2-virtualbox-amd64.ova

### Downgade Python 3.10 to 3.8.10
- https://www.liquidweb.com/kb/how-to-install-pyenv-on-ubuntu-18-04/

### Adding Debian and Stable Repository
- `sudo nano /etc/apt/sources.list`
- `deb http://ftp.debian.org/debian stable main contrib non-free`
- `deb http://http.kali.org/kali kali-last-snapshot main contrib non-free`

### Must HAVE Apps!!!
- `sudo apt install python3-pip neofetch exif tree htop fonts-noto-color-emoji rofi ranger zsh tmux ufw gobuster golang-go`

### RustScan
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`

### No Sudo Password Policy & Unzip rockyou.txt
- `sudo dpkg-reconfigure kali-grant-root`
- `sudo gzip -d /usr/share/wordlists/rockyou.txt.gz`

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
- 

### Auto Login
- `sudo nano /etc/lightdm/lightdm.conf`
```
[SeatDefaults]
autologin-guest=false
autologin-user=kali
autologin-user-timeout=0
```

### Zsh Setup
Don't forget to add tilix shortcut
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `nano ~/.oh-my-zsh/lib/directories.zsh`
- Change the theme to `kali`
```
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
echo "\n. /etc/profile.d/vte.sh" >> ~/.zshrc
sleep(1)
sudo cp -r ~/.oh-my-zsh /root/
sudo cp ~/.zshrc /root/
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
- `xfce4-panel -r && xfwm4 --replace`

### Personal Terminal Shortcuts
```
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/htop /bin/h
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
sudo ln -s /bin/neofetch /bin/n
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/screen /bin/sc

echo "sudo su" > s
chmod a+x s
sudo mv s /usr/bin/
```

### Tiling Windows Manager
- `go install github.com/blrsn/zentile@latest`
- `sudo cp ~/go/bin/zentile /usr/bin/`
- Go to `Session and Startup` to start `zentile` at startup

### Broken ZSH History 
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zsh_history_fix
chmod a+x zsh_history_fix
sudo mv zsh_history_fix /usr/bin/zsh_history_fix
```
