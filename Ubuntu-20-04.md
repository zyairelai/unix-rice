# Ubuntu 20.04 LTS
This is the Setup for my Ubuntu 20.04 LTS

1. [Problem Fix]()
  - [Sub-heading](#)
    * [Sub-sub-heading](#)

2. [Daily-Use Software Installation](#)
  - [Sub-heading](#)
    * [Sub-sub-heading](#)

3. [Terminal Setup](#Terminal-Setup)
  - [Bash & Tmux Setup](#Bash & Tmux Setup)
  - [Installing Nerd-Fonts (Terminal Emoji)](#Installing Nerd-Fonts (Terminal Emoji))
  - [Zsh Setup](#Zsh Setup)
  - [Tilix (Optional)](#Tilix (Optional))




### Wallpaper
```
sudo cp "Wallpapers/retro-coffee-shop.jpg" "/usr/share/backgrounds/"
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/retro-coffee-shop.jpg"
```

### VirtualBox Issues Fixed

Cannot install Guest Additions on Debian

Edit `/etc/fstab`

Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```


### To fix `fonts-noto-color-emoji` sometimes
```
sudo apt reinstall fonts-noto-color-emoji

# Installing Tools for Daily use
### Install Necessary Tools
`sudo apt install git curl python3-pip pipenv chrome-gnome-shell gnome-tweak-tool fonts-noto-color-emoji tree neofetch`

### Install from Software Center
- Discord
- Sublime Text
- Visual Studio Code
- Telegram

### Something Extra for Pentest Fun
- `sudo apt install nmap nikto`
- [AnonSurf](https://github.com/ParrotSec/anonsurf)
- SSL/SSH VNC Viewer

### Installing SearchSploit
- `sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb`  
- `sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit`
- [SearchSploit](https://github.com/rad10/SearchSploit.py)

### Installing Gnome Extensions
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/)
- [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)



# Setup for Beautiful Terminal 
### Check if `zsh` is installed
- `sudo apt install zsh tmux fonts-powerline`

```

## Terminal-Setup

### Bash & Tmux Setup
```
cp ~/.bashrc ~/.bashrc.bck
cp Terminal/bashrc-kali-2019 ~/.bashrc
source .bashrc
cp Terminal/tmux.conf ~/.tmux.conf
tmux source-file .tmux.conf
```

### Installing Nerd-Fonts (Terminal Emoji)
- [Hack Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf)


### Zsh Setup
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`  
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`  

```
cp Terminal/zshrc ~/.zshrc
chsh -s $(which zsh)
```

# Tilix (Optional)
### Installing Tilix and Open Tilix Here
- `sudo apt install tilix python-nautilus`
- `sudo update-alternatives --config x-terminal-emulator`

### For OCD, can replace the Tilix to the default Terminal icon
- `/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`

### This is the Tilix setup for Ubuntu 20.04, perhaps thing changes every updates  
- `sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`