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
sudo apt install polybar rofi neofetch tree ranger tilix python3-nautilus fonts-noto-color-emoji
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
```
python3 -c 'import pty;pty.spawn("/bin/bash")'
```

### To Clean Up APT Bundles
- https://github.com/davidfoerster/aptsources-cleanup
```
sudo apt install python3-apt python3-regex
chmod a+x aptsources-cleanup.pyz
sudo ./aptsources-cleanup.pyz
```

## Fix Everything
[Fix DNS issue](https://askubuntu.com/questions/951057/ubuntu-dns-error-chrome-dns-probe-finished-nxdomain-firefox-similar)  
[Fix Dual Boot Wrong Time](https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/)
[Ubuntu 20.04 boots to black screen with flashing cursor](https://www.py4u.net/discuss/1121744)

### Fix Emoji Font
```
sudo apt reinstall fonts-noto-color-emoji
```

### Fix Local Time
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### Fix VirtualBox Guest Permission
```
sudo adduser $USER vboxsf
```
