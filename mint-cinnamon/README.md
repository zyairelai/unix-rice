# Linux Mint Cinnamon 21
Linux Mint 21 is not allowing us to run `setup.sh` when its freshly installed.

### Allow Permissions + Wordlists
```
sudo mkdir /var/www
sudo mkdir /usr/share/wordlists
sudo chown -R $USER /opt
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -O /usr/share/wordlists/common.txt
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt -O /usr/share/wordlists/big.txt
sudo wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /usr/share/wordlists/directory-list-2.3-medium.txt
sudo wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz -O /usr/share/wordlists/rockyou.txt.gz
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
```

### Installing Nessarily Tools
- `sudo dpkg --add-architecture i386`
- `sudo apt update`
```
sudo apt install git tilix nautilus python3-nautilus python3-pip python2 deluge htop screen tmux telegram-desktop fonts-powerline virtualbox zsh -y
```
```
sudo apt install cadaver golang-go ffuf hydra john nmap nikto remmina sqlmap sshuttle ruby-dev wafw00f wifite whatweb build-essential -y
```
- `sudo gem install wpscan`
- `wget https://bootstrap.pypa.io/pip/2.7/get-pip.py`
- `sudo python2 get-pip.py`

### Installing Debian Packages
```
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://discord.com/api/download\?platform=linux\&format\=deb -O discord.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb
sudo dpkg -i *.deb
```
- `sudo apt -f install`

### Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo su" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/
```

### ZSH Setup
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
- `chsh -s $(which zsh)`
```
mkdir -p ~/.config/tilix/schemes/
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-cinnamon/dotfiles/powerzshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-cinnamon/dotfiles/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-cinnamon/dotfiles/nord.json -O ~/.config/tilix/schemes/nord.json
wget https://github.com/zyairelai/unix-rice/blob/master/mint-cinnamon/dotfiles/nerd-font.ttf?raw=true -O nerd-font.ttf
```

```
timedatectl set-local-rtc 1 --adjust-system-clock
```

# Pentest Fun

### Installing Rustscan
```
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
chmod a+x rustscan && sudo mv rustscan /usr/bin/
```

### Exploit DB
- `sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb`
- `sudo ln -sf /opt/exploitdb/searchsploit /usr/bin/searchsploit`

### Metasploit Framework
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
```

# Load all my setup
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-cinnamon/dotfiles/dconf.org.cinnamon`
```
dconf load /org/cinnamon/ < dconf.org.cinnamon
```

# Save all my setup
```
dconf dump /org/cinnamon/ > dconf.org.cinnamon
```

# Unix Porn

### Install all dependencies
```
sudo apt install plank
```

### Nordic Theme 
- `wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic.tar.xz`
- `wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-darker.tar.xz`
- `tar -xf Nordic.tar.xz`
- `tar -xf Nordic-darker.tar.xz`
- `sudo mv Nordic /usr/share/themes/`
- `sudo mv Nordic-darker /usr/share/themes/`

### Whitesur-GTK-Theme
- `git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git`
- `cd WhiteSur-gtk-theme`
- `./install.sh -c Dark`
- `./install.sh --nord`

### Nordzy Icon
- `git clone https://github.com/alvatip/Nordzy-icon.git`
- `cd Nordzy-icon`
- `./install.sh --total`

### Nordzy Cursors
- `git clone https://github.com/alvatip/Nordzy-cursors.git`
- `cd Nordzy-cursors`
- `./install.sh`

### Plank theme
- `mkdir -p ~/.local/share/plank/themes/`
- `unzip plank-dock-theme.zip -d ~/.local/share/plank/themes/`

### Ulauncher theme
- `mkdir -p ~/.config/ulauncher/user-themes/`
- `wget https://github.com/zyairelai/unix-rice/blob/master/mint-cinnamon/dotfiles/ulauncher-theme.zip`
- `unzip ulauncher-theme.zip -d ~/.config/ulauncher/user-themes/`

### Final Touch
Go to `System Settings` > `Login Window` > `Background`
