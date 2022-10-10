#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Extract Rockyou.txt
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

# Enable Login without Password
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
sudo apt install python-pip tilix neofetch htop fonts-noto-color-emoji rofi ranger remmina golang-go kali-grant-root kali-root-login -y
# sudo apt install wine32 mingw-w64 seclists -y

# Installing Debian Packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
sudo dpkg -i *.deb

# Configure Python
wget https://bootstrap.pypa.io/get-pip.py
sleep 1
python3.9 get-pip.py
/home/kali/.local/bin/pip3.9 install droopescan
sudo cp /home/kali/.local/bin/droopescan /usr/bin/droopescan
pip2 install virtualenv

# XFCE4 Desktop Setup
mkdir ~/.ssh && mkdir ~/.config/rofi && mkdir ~/.config/polybar
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/ssh/config -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/tmux.conf -O ~/.tmux.conf
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/user-dirs.dirs -O ~/.config/user-dirs.dirs
sudo wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/ssh/sshd_config -O ~/etc/ssh/sshd_config

# Clean Up everything
rm *.deb
rm get-pip.py
rm -rf Desktop Documents Downloads Music Pictures Public Templates Videos

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
