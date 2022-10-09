# Kali XFCE 2022.2 Setup

### No Sudo Password Policy
- `sudo dpkg-reconfigure kali-grant-root`

### Universal Debian Package for Tilix
- `sudo nano /etc/apt/sources.list`
- `sudo apt install tilix`

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- Some useful browser plugins
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
- https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
- https://addons.mozilla.org/en-US/firefox/addon/uaswitcher/

### ZSH for root
- `cd /root/`
- `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
```
mv /root/.zshrc /root/.zshrc.bak
mv /root/.oh-my-zsh/lib/directories.zsh /root/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O /root/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O /root/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O /root/.oh-my-zsh/custom/themes/kali.zsh-theme
```

### Disable Sublime Update Prompt
- Go to `Preferences` -> `Settings` and add the following:
```
{
	"update_check": false,
	"font": 14
}
```
- https://gist.github.com/OrionUnix/51ae230f5f9ea6c332b5639f556cc1d6
- https://gist.github.com/rajibdpi/2ea3a97d025793e26225c69deb4d5768

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

# No Longer Useful but keep it just in case
### RustScan (Latest Version)
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`
- `sudo cp ~/.cargo/bin/rustscan /usr/bin/rustscan`

### Clock Options
- `%a %d %b %Y %r`
- https://docs.xfce.org/xfce/xfce4-panel/clock

### Tiling Windows Manager 
- `go install github.com/blrsn/zentile@latest`
- `sudo cp ~/go/bin/zentile /usr/bin/`
- Go to `Session and Startup` to start `zentile` at startup