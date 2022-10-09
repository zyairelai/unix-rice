#!/bin/bash

# Extract Rockyou.txt
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

# Import necessarily repository packages
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo echo "
# deb http://ftp.debian.org/debian stable main contrib non-free
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free

# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
# deb http://http.kali.org/kali kali-rolling main contrib non-free

# Additional line for source packages
# deb-src http://http.kali.org/kali kali-rolling main contrib non-free
" >> /etc/apt/sources.list
sleep 2

# Installing necessarily tools
sudo dpkg --add-architecture i386
sleep 2
sudo apt update
sleep 2
sudo apt install python3-pip neofetch tree htop fonts-noto-color-emoji rofi ranger zsh tmux remmina virtualenv wine32 mingw-w64 gobuster golang-go kali-grant-root kali-root-login debootstrap squashfs-tools seclists feroxbuster impacket-scripts nbtscan oscanner redis-tools snmp sipvicious tnscmd10g wkhtmltopdf -y
sleep 2
sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
sleep 2

# Install DroopeScan
wget https://bootstrap.pypa.io/get-pip.py
sleep 2
python3.9 get-pip.py
# /home/kali/.local/bin/pip3.9 install droopescan
# sudo cp /home/kali/.local/bin/droopescan /usr/bin/droopescan
# pip2 install virtualenv

# Installing Rustscan
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 2
chmod a+x rustscan && sudo mv rustscan /usr/bin/

# Enable Login without Password
sudo echo "
[SeatDefaults]
autologin-guest=false
autologin-user=kali
autologin-user-timeout=0
" >> /etc/lightdm/lightdm.conf

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 2
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# XFCE4 Desktop Setup
mkdir ~/.config/rofi && mkdir ~/.config/polybar && mkdir ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-desktop.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-keyboard-shortcuts.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-power-manager.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfwm4.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/tmux.conf -O ~/.tmux.conf

# Personal Terminal Shortcuts
sudo rm /usr/bin/python3
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc
sudo ln -s /usr/bin/python3.9 /usr/bin/python3
mkdir ~/.ssh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/sshconfig -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/cssh -O /usr/bin/cssh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/cjohn -O /usr/bin/cjohn
echo "sudo su" > s 
chmod a+x s && sudo mv s /usr/bin/
