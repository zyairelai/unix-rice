#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Allow Permissions
sudo mkdir /var/www
sudo mkdir /usr/share/wordlists
sudo chown -R zyaire /opt
sudo chown -R zyaire /var/www/
sudo chown -R zyaire /usr/share/

wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -O /usr/share/wordlists/common.txt
wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt -O /usr/share/wordlists/big.txt
wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /usr/share/wordlists/directory-list-2.3-medium.txt
wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz -O /usr/share/wordlists/rockyou.txt.gz
gzip -d /usr/share/wordlists/rockyou.txt.gz

# Installing Rustscan
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/

# Installing Nessarily Tools
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install git python2.7 python-pip tilix nautilus nautilus-admin python3-nautilus python3-pip deluge htop screen tmux telegram-desktop fonts-powerline virtualbox zsh -y
sudo apt install cadaver golang-go ffuf hydra john nmap nikto remmina sqlmap sshuttle ruby-dev wafw00f wifite whatweb build-essential -y
# go install github.com/ffuf/ffuf@latest
# gem install wpscan
pip2 install virtualenv

# Exploit DB
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sudo ln -sf /opt/exploitdb/searchsploit /usr/bin/searchsploit

# Metasploit Framework
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall

# Installing Debian Packages
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://discord.com/api/download\?platform=linux\&format\=deb -O discord.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb
sudo dpkg -i *.deb && sudo apt -f install -y

# Personal Terminal Shortcuts
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo su" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/

# Clean Up
timedatectl set-local-rtc 1 --adjust-system-clock
rm -rf Public Templates *.deb
