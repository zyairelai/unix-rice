# Linux Mint Cinnamon 21.2
Linux Mint 21.2 is not allowing us to run `setup.sh` when its freshly installed.

# Load all my setup
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/mint-cinnamon/dotfiles/dconf.org.cinnamon`
```
dconf load /org/cinnamon/ < dconf.org.cinnamon
```

# Save all my setup
```
dconf dump /org/cinnamon/ > dconf.org.cinnamon
```

### Allow Permissions + Wordlists
```
sudo mkdir /usr/share/wordlists
sudo chown -R $USER /usr/share/wordlists
sudo chown -R $USER /opt
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -O /usr/share/wordlists/common.txt
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt -O /usr/share/wordlists/big.txt
sudo wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /usr/share/wordlists/directory-list-2.3-medium.txt
sudo wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz -O /usr/share/wordlists/rockyou.txt.gz
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
```
### Installing Nessarily Tools
- `sudo apt update`
```
sudo apt install git tilix python3-pip python3 htop screen tmux fonts-powerline ffuf hydra john nmap nikto remmina sshuttle wafw00f whatweb zsh build-essential ruby-dev -y
```
### Installing Debian Packages
```
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
chmod a+x rustscan && sudo mv rustscan /usr/bin/
sudo dpkg -i *.deb
```
### Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo -i" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/
```
# Pentest Fun
###
- `sudo git clone https://github.com/danielmiessler/SecLists.git /usr/share/SecLists`
### Exploit DB
- `sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb`
- `sudo ln -sf /opt/exploitdb/searchsploit /usr/bin/searchsploit`

### Metasploit Framework
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
```
### Firefox Extensions
- Go to `about:config`
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/pwnfox/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
