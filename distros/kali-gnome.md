# Kali GNOME Setup on VMware Workstation

### Adding Debian Repository
- `sudo nano /etc/apt/sources.list`
```
deb http://ftp.debian.org/debian stable main contrib non-free
```

### No Sudo Password Policy
```
sudo dpkg-reconfigure kali-grant-root
```

### Must HAVE Apps!!!
Personal Setup
```
sudo apt install python3-pip neofetch tree htop fonts-noto-color-emoji ranger zsh tmux ufw gobuster
```

### RustScan
```
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan
```

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

### Personal Terminal Shortcuts
```
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/htop /bin/h
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/screen /bin/sc
```

### Zsh Setup
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
nano ~/.oh-my-zsh/lib/directories.zsh

wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/kali-2019.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/parrot.zsh-theme -O ~/.oh-my-zsh/custom/themes/parrot.zsh-theme
```

### Set Timezone
```
sudo timedatectl set-timezone Asia/Singapore
sudo timedatectl set-local-rtc 1 --adjust-system-clock
```

### Installing Gnome Extensions
- [Hide Dash X](https://extensions.gnome.org/extension/805/hide-dash/)
- [Transparent Top Bar](https://extensions.gnome.org/extension/1708/transparent-top-bar/)

### Change Login Background
- https://www.befunky.com/features/blur-image/
```
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
chmod +x change-gdm-background
sudo cp change-gdm-background /usr/share/backgrounds/
sudo ./change-gdm-background /path/to/image
```

### Change Login Background
- https://www.befunky.com/features/blur-image/
```
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
chmod +x change-gdm-background
sudo cp change-gdm-background /usr/share/backgrounds/
sudo ./change-gdm-background /path/to/image
```

### Keyboard Shortcuts
| Description                              | Shortcuts             | 
| ---------------------------------------- | --------------------- |
| Home folder                              | Ctrl + Alt + F        | 
| Launch Web Browser                       | Ctrl + Alt + G        | 
| Settings                                 | Super + S             | 
| Hide all normal windows                  | Disabled              | 
| Move to workspace xxx                    | Ctrl + Alt + Arrows   | 
| Move window one workspace xxx            | Super + Arrows        | 
| Show all applications                    | Ctrl + Space          | 
| Switch to next input source              | Shift + Alt + N       |
| Close window                             | Alt + W               |
| Maximize window                          | Alt + Super + Up      |
| View Split (Tiling) on xxx               | Alt + Super + Arrows  |
| `Marktext`                               | Ctrl + Alt + M        |
| `BurpSuiteCommunity` / `java -jar burp.jar` | Ctrl + Alt + B        |
| `dash-to-dock`                           | Ctrl + Alt + D        |
| `subl`                                   | Ctrl + Alt + S        |
| `virtualbox`                             | Ctrl + Alt + V        |
| `vboxmanage startvm "vmname"`            | Ctrl + Alt + whatever |

### Tiling Windows Manager from Pop OS
```
git clone https://github.com/zyairelai/pop-shell
cd shell
sudo apt install node-typescript
make local-install
```
