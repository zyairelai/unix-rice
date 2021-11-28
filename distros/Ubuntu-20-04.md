# Ubuntu 20.04 LTS
### These are the Setup for my Ubuntu 20.04 LTS

1. [Installing Tools for Daily use](#Installing-Tools-for-Daily-Use)
    - [Install Necessary Tools](#Install-Necessary-Tools)
    - [Install from Software Center](#Install-from-Software-Center)
    - [Something Extra for Pentest Fun](#Something-Extra-for-Pentest-Fun)
    - [Installing SearchSploit](#Installing-SearchSploit)
    - [Installing Gnome Extensions](#Installing-Gnome-Extensions)

2. [Terminal Setup](#Terminal-Setup)
    - [Bash Setup](#Bash-Backup)
    - [Installing Nerd-Fonts (Terminal Emoji)](#Installing-Nerd-Fonts)
    - [Zsh Setup](#Zsh-Setup)
    - [Tmux Setup](#Tmux-Setup)
    - [Tilix (Optional)](#tilix)
    
3. [Problem Fixed](#Problem-Fixed)
    - [VirtualBox Issues Fixed](#VirtualBox-Issues-Fixed)
    - [Emoji Font Fixed](#Emoji-Font-Fixed)
    
# Installing Tools for Daily Use
## Install Necessary Tools
`sudo apt install docker pipenv chrome-gnome-shell gnome-tweak-tool fonts-noto-color-emoji telegram-desktop`

### Maybe not that Necessary
`sudo apt install nmap nikto ranger simplescreenrecorder`

## Install from Snap / Software Center
- Discord
- Sublime Text
- Visual Studio Code
- `sudo snap install --classic heroku`

## Installing SearchSploit
- [SearchSploit](https://github.com/offensive-security/exploitdb)

## Installing Gnome Extensions
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

## Uninstall Unnecessary Extensions
- `sudo apt remove gnome-shell-extension-ubuntu-dock`

# Terminal-Setup
## Bash Backup
```
cp ~/.bashrc ~/.bashrc.bck
```

## Installing Nerd-Fonts
- [Hack Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf)

## Zsh Setup
- `sudo apt install zsh tmux fonts-powerline`
- `sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh`
- [Oh My Zsh Github Repository](https://github.com/ohmyzsh/ohmyzsh)
- [Powerlevel9k Github Repository](https://github.com/Powerlevel9k/powerlevel9k)
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
- `nano ~/.oh-my-zsh/lib/directories.zsh`
- `alias ll='ls -lh --group-directories-first'`
- `chsh -s $(which zsh)`
- `tmux source-file .tmux.conf`

<a name="tilix"></a>
## Tilix (Optional)
### Installing Tilix and Open Tilix Here
- `sudo apt install tilix python3-nautilus`
- `sudo update-alternatives --config x-terminal-emulator`

### For OCD, can replace the Tilix to the default Terminal icon
- `/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`

### This is the Tilix setup for Ubuntu 20.04, perhaps thing changes every updates  
- `sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`


# Problem Fixed
## VirtualBox Issues Fixed
Error: `Cannot install Guest Additions on Debian`  
Edit `/etc/fstab`  
Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```

## Emoji Font Fixed
`sudo apt reinstall fonts-noto-color-emoji`

## Local Time Fixed
`timedatectl set-local-rtc 1 --adjust-system-clock`

## Emoji Font Fixed
- https://www.py4u.net/discuss/1121744
