# Kali 2022.2 PWK / OSCP
Clean and clear Kali 2022.2 Setup for PWK / OSCP
- https://help.offensive-security.com/hc/en-us/articles/360049796792-Kali-Linux-Virtual-Machine

### No Sudo Password Policy & Unzip rockyou.txt
- `sudo dpkg-reconfigure kali-grant-root`
- `sudo gzip -d /usr/share/wordlists/rockyou.txt.gz`
- https://linuxconfig.org/how-to-enable-root-login-on-kali-linux

### Adding Debian and Stable Repository
- `sudo nano /etc/apt/sources.list`
- `deb http://ftp.debian.org/debian stable main contrib non-free`
- `deb http://http.kali.org/kali kali-last-snapshot main contrib non-free`

### Must HAVE Apps!!!
- `sudo dpkg --add-architecture i386`
- `sudo apt update`
- `sudo apt install kali-root-login python3-pip neofetch tree htop fonts-noto-color-emoji rofi ranger zsh tmux golang-go remmina virtualenv wine32 mingw-w64 -y`
- `wget https://bootstrap.pypa.io/get-pip.py`
- `python3.9 get-pip.py`
- `pip2 install virtualenv`

### Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc
sudo ln -s /usr/bin/python3.9 /usr/bin/python3
```
# After Reboot

### Auto Login
- `sudo nano /etc/lightdm/lightdm.conf`
```
[SeatDefaults]
autologin-guest=false
autologin-user=root
autologin-user-timeout=0
```

### AutoRecon
```
sudo apt install gobuster golang-go kali-grant-root debootstrap squashfs-tools seclists feroxbuster impacket-scripts nbtscan oscanner redis-tools snmp sipvicious tnscmd10g wkhtmltopdf && sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
```

### RustScan
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`
- `sudo cp ~/.cargo/bin/rustscan /usr/bin/rustscan`

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/

### For ZSH root
- `cd /root/`
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `nano ~/.oh-my-zsh/lib/directories.zsh`
- Change the theme to `kali`
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/zshtheme/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
echo "alias ll='ls -ah --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
echo "\n. /etc/profile.d/vte.sh" >> ~/.zshrc
```

### XFCE4 Desktop Setup
```
mkdir ~/.config/rofi && mkdir ~/.config/polybar && mkdir ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-desktop.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-keyboard-shortcuts.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-power-manager.xml
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
```
Need Extra Review
### Clock Options
- `%a %d %b %Y %r`
- https://docs.xfce.org/xfce/xfce4-panel/clock
```
mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/tmux.conf -O ~/.tmux.conf
```

### Disable Sublime Update Prompt
- Go to `Preferences` -> `Settings` and add the following:
```
{
    "update_check": false,
    "font": 14
}
```

### Disable SSH Strict Host Key Checking
- `mkdir ~/.ssh`
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/preconfigured/scripts/sshconfig -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/preconfigured/scripts/cssh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/preconfigured/scripts/cjohn
```
```
chmod 400 ~/.ssh/config
chmod a+x cssh
chmod a+x cjohn
sudo mv cjohn /usr/bin/ && sudo mv cssh /usr/bin
```

# CTF Forever
- https://github.com/c3c/CVE-2021-4034
```
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64
wget https://raw.githubusercontent.com/riswandans/litesploit/master/modules/exploits/linux/localroot/overlayfs.c
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
```
```
wget https://github.com/int0x33/nc.exe/raw/master/nc.exe
wget https://github.com/int0x33/nc.exe/raw/master/nc64.exe
wget https://github.com/gentilkiwi/mimikatz/files/4167347/mimikatz_trunk.zip
wget https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Rubeus.exe
wget https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Kerberoast.ps1
wget https://raw.githubusercontent.com/CsEnox/EventViewer-UACBypass/main/Invoke-EventViewer.ps1
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe -O PrintSpoofer.exe
```
