# Kali GNOME Setup on VMware Workstation

### No Sudo Password Policy
```
sudo dpkg-reconfigure kali-grant-root
```

### Must HAVE Apps!!!
Personal Setup
```
sudo apt install python3-pip python3-nautilus neofetch tree htop fonts-noto-color-emoji ranger zsh tmux ufw gobuster rofi node-typescript
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

### Installing Gnome Extensions
- [Hide Dash X](https://extensions.gnome.org/extension/805/hide-dash/)
- [Transparent Top Bar](https://extensions.gnome.org/extension/1708/transparent-top-bar/)
- [Show IP](https://extensions.gnome.org/extension/1762/lan-ip-address/)
- [No Overview at start-up](https://extensions.gnome.org/extension/4099/no-overview/)

### Personal Terminal Shortcuts
```
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/htop /bin/h
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
sudo ln -s /bin/neofetch /bin/n
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/screen /bin/sc
```

### Zsh Setup
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
echo "\ndisable r" >> ~/.zshrc
echo "\n. /etc/profile.d/vte.sh" >> ~/.zshrc
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
nano ~/.oh-my-zsh/lib/directories.zsh

wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/zshtheme/parrot.zsh-theme -O ~/.oh-my-zsh/custom/themes/parrot.zsh-theme
```

### Tiling Windows Manager from Pop OS
```
git clone https://github.com/zyairelai/pop-shell
cd pop-shell
make local-install

mkdir ~/.config/rofi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/config/rofi/config.rasi -O ~/.config/rofi/config.rasi
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
```

### Keyboard Shortcuts
| Description                              | Shortcuts             | 
| ---------------------------------------- | --------------------- |
| Home folder                              | Ctrl + Alt + F        | 
| Launch Web Browser                       | Ctrl + Alt + G        | 
| Settings                                 | Ctrl + Alt + S        | 
| Hide all normal windows                  | Disabled              | 
| Move to workspace xxx                    | Ctrl + Alt + Arrows   | 
| Move window one workspace xxx            | Super + Arrows        | 
| Close window                             | Alt + W               |
| Maximize window                          | Alt + Super + Up      |
| View Split (Tiling) on xxx               | Alt + Super + Arrows  |
| `rofi -show drun -theme /home/kali/.config/rofi/config.rasi`     | Ctrl + Alt + M        |

### Set Timezone
```
sudo timedatectl set-timezone Asia/Singapore
sudo timedatectl set-local-rtc 1 --adjust-system-clock
```

### Adding Debian Repository
- `sudo nano /etc/apt/sources.list`
```
deb http://ftp.debian.org/debian stable main contrib non-free
```
```
sudo apt install tilix
sudo update-alternatives --config x-terminal-emulator
```
