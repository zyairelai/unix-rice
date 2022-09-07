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
```

### Installing Gnome Extensions
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Hide Dash X](https://extensions.gnome.org/extension/805/hide-dash/)
- [Transparent Top Bar](https://extensions.gnome.org/extension/1708/transparent-top-bar/)
- [Places Status Indicator](https://extensions.gnome.org/extension/8/places-status-indicator/)
- [All IP Addresses](https://extensions.gnome.org/extension/3994/all-ip-addresses/)

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg python3-pip neofetch tree htop exif fonts-noto-color-emoji ranger screen zsh tmux fonts-powerline tilix python3-nautilus mlocate gnome-tweak-tool totem resolvconf ubuntu-restricted-extras nmap nikto sshuttle wafw00f whatweb build-essential -y && sudo apt remove gnome-shell-extension-ubuntu-dock -y
```

### Change Login Background
- https://www.befunky.com/features/blur-image/
```
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
- https://github.com/zyairelai/unix-rice/blob/master/dotfiles/nerd-font.ttf

### Personal Terminal Shortcuts
```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/screen /bin/sc
sudo ln -s /bin/python3 /bin/py
```
### Dash to Dock one line
```
echo "gsettings get org.gnome.shell enabled-extensions | grep 'dash-to-dock' && gnome-extensions disable dash-to-dock@micxgx.gmail.com && dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.dash.hide();' || gnome-extensions enable dash-to-dock@micxgx.gmail.com" >> dash-to-dock
chmod a+x dash-to-dock
sudo mv dash-to-dock /usr/bin/
```

### Input Method
- https://www.dell.com/support/kbdoc/en-my/000181184/how-to-add-chinese-pinyin-input-to-xps-9310-laptops-that-ship-with-ubuntu-20-04-in-english
```
sudo apt-get install ibus-pinyin ibus-sunpinyin
ibus restart
ibus-setup
```

### Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### Keyboard Shortcuts
| Description                              | Shortcuts                   | 
| ---------------------------------------- | --------------------------- |
| Home folder                              | Ctrl + Alt + F              | 
| Launch Web Browser                       | Ctrl + Alt + G              | 
| Settings                                 | Super + S                   | 
| Hide all normal windows                  | Disabled                    | 
| Move to workspace xxx                    | Ctrl + Super + Arrows       | 
| Move window one workspace xxx            | Shift + Ctrl + Alt + Arrows | 
| Show all applications                    | Ctrl + Space                | 
| Switch to next input source              | Shift + Alt + N             |
| Close window                             | Alt + W                     |
| Maximize window                          | Alt + Super + Up            |
| View Split (Tiling) on xxx               | Alt + Super + Arrows        |
| `java -jar burp.jar`                     | Ctrl + Alt + B              |
| `dash-to-dock`                           | Ctrl + Alt + D              |
| `subl`                                   | Ctrl + Alt + S              |
| `virtualbox`                             | Ctrl + Alt + V              |
| `vboxmanage startvm "vmname"`            | Ctrl + Alt + whatever       |

### Disable SSH Strict Host Key Checking
- `nano ~/.ssh/config`
```
Host *
    StrictHostKeyChecking no
```
- `chmod 400 ~/.ssh/config`

### Tiling Windows Manager from Pop OS
```
git clone https://github.com/zyairelai/pop-shell
cd shell
sudo apt install node-typescript
make local-install
```

# Addressing Annoying Problems

### Pairing Logitech Unifying
- https://askubuntu.com/questions/113984/is-logitechs-unifying-receiver-supported/114089#114089
```
sudo apt-get install git gcc
git clone https://git.lekensteyn.nl/ltunify.git
cd ltunify
make install-home

sudo ./ltunify pair
```

### Virtualbox Guest Addition iso permission
```
mount -v | grep cdrom0
sudo mount -o remount,exec,ro /media/cdrom0
```

### Nvidia PowerSaving Mode Intel
- `sudo prime-select intel`

### Permanent DNS
- https://www.tecmint.com/set-permanent-dns-nameservers-in-ubuntu-debian/
- `sudo nano /usr/bin/ds`
```
#!/bin/bash

echo "nameserver 8.8.8.8" >> /run/resolvconf/resolv.conf
echo "nameserver 8.8.4.4" >> /run/resolvconf/resolv.conf
```
