# Linux Mint Cinnamon 21.2
Linux Mint 21.2 is not allowing us to run `setup.sh` when its freshly installed.

### Load all my setup
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-21.2/dconf_org_cinnamon`
```
dconf load /org/cinnamon/ < dconf_org_cinnamon
```

### Save all my setup
```
dconf dump /org/cinnamon/ > dconf_org_cinnamon
```

### Date Time Format
```
 %a, %b %e, %l:%M:%S %p
```

### Installing Nessarily Tools
- `sudo apt update`
```
sudo apt install git tilix python3-pip python3 htop screen tmux fonts-powerline ffuf whatweb nmap nikto remmina sshuttle wafw00f zsh build-essential docker.io docker-compose ruby-dev -y
```
```
sudo systemctl start docker
sudo chmod 666 /var/run/docker.sock
```
### Installing Debian Packages
```
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb
sudo dpkg -i *.deb
```
### Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc
echo "sudo -i" > s 
chmod a+x s && sudo mv s /usr/bin/
sudo ln -s /usr/bin/s /usr/bin/i
```
# Pentest Fun
### SecLists
```
sudo git clone https://github.com/danielmiessler/SecLists.git /usr/share/SecLists
```
### Exploit DB
- `sudo git clone https://gitlab.com/exploit-database/exploitdb.git /opt/exploitdb`
- `sudo ln -sf /opt/exploitdb/searchsploit /usr/bin/searchsploit`
### Metasploit Framework
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
```
