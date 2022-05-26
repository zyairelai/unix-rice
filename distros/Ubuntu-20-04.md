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
- [Hide Dash X](https://extensions.gnome.org/extension/805/hide-dash/)
- [Transparent Top Bar](https://extensions.gnome.org/extension/1708/transparent-top-bar/)
- [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg python3-pip neofetch tree htop fonts-noto-color-emoji ranger screen zsh tmux fonts-powerline tilix python3-nautilus mlocate gnome-tweak-tool totem ubuntu-restricted-extras virtualbox ruby-full nmap nikto sshuttle wafw00f whatweb build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev libyaml-dev curl zlib1g-dev gawk bison libffi-dev libgdbm-dev libncurses5-dev libtool sqlite3 libgmp-dev gnupg2 dirmngr libglib2.0-dev-bin && sudo apt remove gnome-shell-extension-ubuntu-dock
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
[RustScan](https://doc.rust-lang.org/cargo/getting-started/installation.html)
```
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan
```
[Metasploit Console](https://www.darkoperator.com/installing-metasploit-in-ubunt)
```
cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework.git
sudo chown -R `whoami` /opt/metasploit-framework
cd metasploit-framework
sudo bash -c 'for MSF in $(ls msf*); do ln -s /opt/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
gem install bundler
bundle install
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
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/screen /bin/sc
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
```

### Keyboard Shortcuts

| Shortcuts             | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Ctrl + Alt + F        | Home folder                                                  |
| Ctrl + Alt + G        | Launch Web Browser                                           |
| Super + D             | Hide all normal windows (Disable This)                       |
| Ctrl + Alt + S        | Settings                                                     |
| Ctrl + Alt + Arrows   | Move to workspace (direction)                                |
| Super + Arrows        | Move window one workspace (direction)                        |
| Alt + Super + Arrows  | Tiling Windows to (direction)                                |
| Alt + W               | Close window                                                 |
| Ctrl + Space          | Show all applications                                        |
| Ctrl + Alt + D        | `dash-to-dock`                                               |
| Ctrl + Alt + M        | `Marktext`                                                   |
| Ctrl + Alt + V        | `virtualbox` <br> To list installed VM `vboxmanage list vms` |
| Ctrl + Alt + whatever | `vboxmanage startvm "vmname"`                                |

Dash to Dock one line
```
echo "gsettings get org.gnome.shell enabled-extensions | grep 'dash-to-dock' && gnome-extensions disable dash-to-dock@micxgx.gmail.com || gnome-extensions enable dash-to-dock@micxgx.gmail.com" >> dash-to-dock
chmod a+x dash-to-dock
sudo mv dash-to-dock /usr/bin/
```

### Input Method
- https://www.dell.com/support/kbdoc/en-my/000181184/how-to-add-chinese-pinyin-input-to-xps-9310-laptops-that-ship-with-ubuntu-20-04-in-english
```
sudo apt-get install ibus-pinyin ibus-sunpinyin
```
```
ibus restart
```
```
ibus-setup
```

### Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### Danger Zone
Add Pentest Repository
```
deb http://http.kali.org/kali kali-rolling main contrib non-free
```
Add Public Keys
```
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ED444FF07D8D0BF6
```
Normal Tools that required newest package
```
sudo apt install wifite golang
```
```
go install github.com/OJ/gobuster/v3@latest
go install github.com/ffuf/ffuf@latest
```
### Virtualbox Guest Addition iso permission
```
mount -v | grep cdrom0
sudo mount -o remount,exec,ro /media/cdrom0
```

https://www.codegrepper.com/code-examples/shell/change+dns+to+8.8.8.8+linux
