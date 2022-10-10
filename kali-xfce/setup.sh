#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Extract Rockyou.txt
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

# Import necessarily repository packages
sudo echo "# deb http://ftp.debian.org/debian stable main contrib non-free
# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
deb http://http.kali.org/kali kali-rolling main contrib non-free
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free

# Additional line for source packages
# deb-src http://http.kali.org/kali kali-rolling main contrib non-free
" > /etc/apt/sources.list

# Enable Login without Password
sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
sudo echo "
[SeatDefaults]
autologin-guest=false
autologin-user=kali
autologin-user-timeout=0
" >> /etc/lightdm/lightdm.conf

# Installing Rustscan
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/

# Installing necessarily tools
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install tilix python-pip python3-nautilus nautilus neofetch htop totem eog fonts-noto-color-emoji rofi ranger remmina golang-go kali-grant-root kali-root-login -y
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
sudo dpkg -i *.deb
pip2 install virtualenv

# XFCE4 Desktop Setup
mkdir ~/.ssh && mkdir ~/.config/rofi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/ssh/config -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/user-dirs.dirs -O ~/.config/user-dirs.dirs
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/heloers.rc -O ~/.config/xfce4/helpers.rc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/tmux.conf -O ~/.tmux.conf

# Personal Terminal Shortcuts
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo su" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Local Setup
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/local.sh
chmod a+x local.sh
