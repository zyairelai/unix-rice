## Ubuntu 20.04 LTS
These are the Setup for my Ubuntu 20.04 LTS

### Install from Snap / Software Center
```
sudo snap install discord
sudo snap install cherrytree
sudo snap install telegram-desktop
sudo snap install --classic code
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
sudo apt install git wget curl gnupg python2.7 python3-pip python3.8-venv ruby-dev node-typescript default-jdk deluge neofetch tree htop exif fonts-noto-color-emoji ranger screen zsh tmux fonts-powerline tilix python3-nautilus mlocate gnome-tweak-tool totem resolvconf ubuntu-restricted-extras nmap nikto sshuttle exiftool freerdp2-x11 remmina cadaver wafw00f whatweb build-essential virtualbox -y && sudo apt remove gnome-shell-extension-ubuntu-dock -y
```
- `wget https://go.dev/dl/go1.17.1.linux-amd64.tar.gz`

### Change Login Background
- https://www.befunky.com/features/blur-image/
```
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
chmod +x change-gdm-background
sudo cp change-gdm-background /usr/share/backgrounds/
sudo ./change-gdm-background /path/to/image
```

### Zsh Setup
- https://github.com/zyairelai/unix-rice/raw/master/preconfigured/nerd-font.ttf
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
- `nano ~/.oh-my-zsh/lib/directories.zsh`
- `sudo update-alternatives --config x-terminal-emulator`
- `chsh -s $(which zsh)`

```
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
mv ~/.bashrc ~/.bashrc.bck
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/kali-2019.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/ubuntu-20-4.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/tmux.conf -O ~/.tmux.conf
```

### For ZSH root
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `nano ~/.oh-my-zsh/lib/directories.zsh`
- Change the theme to `kali`
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/zshtheme/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
echo "alias ll='ls -ah --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
echo "\n. /etc/profile.d/vte.sh" >> ~/.zshrc
```

### Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/xdg-open /usr/bin/open
sudo ln -s /usr/bin/python3 /usr/bin/python
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc
```

### Disable SSH Strict Host Key Checking
```
mkdir ~/.ssh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/preconfigured/scripts/sshconfig -O ~/.ssh/config
chmod 400 ~/.ssh/config
```

### Permanent DNS
```
sudo wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/preconfigured/scripts/ds -O /usr/bin/ds
sudo chmod a+x /usr/bin/ds
```


### Dash to Dock one line
```
echo "gsettings get org.gnome.shell enabled-extensions | grep 'dash-to-dock' && gnome-extensions disable dash-to-dock@micxgx.gmail.com && dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.dash.hide();' || gnome-extensions enable dash-to-dock@micxgx.gmail.com" >> dash-to-dock
chmod a+x dash-to-dock
sudo mv dash-to-dock /usr/bin/
```

### Input Method
- `sudo apt-get install ibus-pinyin`
- `ibus restart`
- `ibus-setup`

### Local Time Fixed
- `timedatectl set-local-rtc 1 --adjust-system-clock`

### Nvidia PowerSaving Mode Intel
- `sudo prime-select intel`

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
| `/opt/burp/burp`                         | Ctrl + Alt + B              |
| `dash-to-dock`                           | Ctrl + Alt + D              |
| `subl`                                   | Ctrl + Alt + S              |
| `virtualbox`                             | Ctrl + Alt + V              |
| `vboxmanage startvm "Kali 2022.2"`       | Ctrl + Alt + K              |

# No Longer Useful 

### Tiling Windows Manager from Pop OS
```
git clone https://github.com/zyairelai/pop-shell
cd shell
sudo apt install node-typescript
make local-install
```

### Pairing Logitech Unifying
- https://askubuntu.com/questions/113984/is-logitechs-unifying-receiver-supported/114089#114089
```
sudo apt-get install git gcc
git clone https://git.lekensteyn.nl/ltunify.git
cd ltunify
make install-home

sudo ./ltunify pair
```
