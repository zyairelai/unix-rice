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
sudo apt install python3-pip python3-nautilus neofetch tree htop fonts-noto-color-emoji ranger zsh tmux ufw gobuster
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
sudo ln -s /bin/neofetch /bin/n
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
sudo update-alternatives --config x-terminal-emulator
```

### Set Timezone
```
sudo timedatectl set-timezone Asia/Singapore
sudo timedatectl set-local-rtc 1 --adjust-system-clock
```

### Installing Gnome Extensions
- [Hide Dash X](https://extensions.gnome.org/extension/805/hide-dash/)
- [Transparent Top Bar](https://extensions.gnome.org/extension/1708/transparent-top-bar/)
- [No Overview at start-up](https://extensions.gnome.org/extension/4099/no-overview/)

### Dash to Dock one line
```
echo "gsettings get org.gnome.shell enabled-extensions | grep 'dash-to-dock' && gnome-extensions disable dash-to-dock@micxgx.gmail.com && dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.dash.hide();' || gnome-extensions enable dash-to-dock@micxgx.gmail.com" >> dash-to-dock
chmod a+x dash-to-dock
sudo mv dash-to-dock /usr/bin/
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
| Show all applications                    | Ctrl + Space          | 
| Switch to next input source              | Shift + Alt + N       |
| Close window                             | Alt + W               |
| Maximize window                          | Alt + Super + Up      |
| View Split (Tiling) on xxx               | Alt + Super + Arrows  |
| `Marktext`                               | Ctrl + Alt + M        |
| `BurpSuiteCommunity` / `java -jar burp.jar` | Ctrl + Alt + B        |
| `dash-to-dock`                           | Ctrl + Alt + D        |

### Tiling Windows Manager from Pop OS
```
git clone https://github.com/zyairelai/pop-shell
cd pop-shell
sudo apt install node-typescript
make local-install
```
