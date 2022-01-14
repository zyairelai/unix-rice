## Ubuntu 20.04 LTS
These are the Setup for my Ubuntu 20.04 LTS

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

### Install from Snap / Software Center
```
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install --classic code
sudo snap install --classic heroku
sudo snap install --classic sublime-text
sudo snap install --classic zaproxy
```

### Installing Gnome Extensions
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg python3-pip neofetch tree htop fonts-noto-color-emoji ranger zsh tmux fonts-powerline tilix python3-nautilus mlocate gnome-tweak-tool totem virtualbox burp nmap nikto wafw00f whatweb && sudo apt remove gnome-shell-extension-ubuntu-dock
```
Anonsurf
```
git clone https://github.com/zyairelai/kali-anonsurf.git
cd kali-anonsurf
sudo ./installer.sh
```
Marktext
```
wget https://github.com/marktext/marktext/releases/latest/download/marktext-x86_64.AppImage
chmod a+x marktext-x86_64.AppImage
sudo mv marktext-x86_64.AppImage /usr/bin/marktext
```

### Change Login Background
```
sudo apt install libglib2.0-dev-bin
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
chmod +x change-gdm-background
sudo cp change-gdm-background /usr/share/backgrounds/
sudo ./change-gdm-background /path/to/image
```

### Zsh Setup

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo update-alternatives --config x-terminal-emulator
chsh -s $(which zsh)
nano ~/.oh-my-zsh/lib/directories.zsh

mv ~/.bashrc ~/.bashrc.bck
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/kali-2019.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/ubuntu-20-4.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/tmux.conf -O ~/.tmux.conf
```

### Personal Terminal Shortcuts

```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
sudo ln -s /sbin/openvpn /sbin/vpn
```

### Keyboard Shortcuts

| Shortcuts             | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Ctrl + Alt + F        | Home folder                                                  |
| Ctrl + Alt + G        | Launch Web Browser                                           |
| Ctrl + Alt + D        | Hide all normal windows                                      |
| Ctrl + Alt + S        | Settings                                                     |
| Ctrl + Alt + Arrows   | Move to workspace (direction)                                |
| Super + Arrows        | Move window one workspace (direction)                        |
| Alt + Super + Arrows  | Tiling Windows to (direction)                                |
| Alt + W               | Close window                                                 |
| Ctrl + Space          | Show all applications                                        |
| Ctrl + Alt + M        | `Marktext`                                                   |
| Ctrl + Alt + V        | `virtualbox` <br> To list installed VM `vboxmanage list vms` |
| Ctrl + Alt + whatever | `vboxmanage startvm "vmname"`                                |

### Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```
