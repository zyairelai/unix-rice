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
sudo apt install git wget curl python3-pip neofetch tree htop fonts-noto-color-emoji telegram-desktop ranger zsh tmux fonts-powerline tilix python3-nautilus mlocate
```
Anonsurf
```
git clone https://github.com/zyairelai/kali-anonsurf.git
cd kali-anonsurf
sudo ./installer.sh
```
Marktext
```
wget https://github.com/marktext/marktext/releases/latest/download/marktext-x86_64.AppImage
chmod a+x marktext-x86_64.AppImage
sudo mv marktext-x86_64.AppImage /usr/bin/marktext
```

## Zsh Setup

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "alias ll='ls -lh --group-directories-first'" >> ~/.oh-my-zsh/lib/directories.zsh
nano ~/.oh-my-zsh/lib/directories.zsh
chsh -s $(which zsh)
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo update-alternatives --config x-terminal-emulator

mv ~/.bashrc ~/.bashrc.bck
wget https://raw.githubusercontent.com/zyairelai/unix-rice/main/dotfiles/nerd-font.ttf
wget https://raw.githubusercontent.com/zyairelai/unix-rice/main/dotfiles/kali-2019.bashrc -O .bashrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/main/dotfiles/ubuntu-20-4.zshrc -O .zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/main/dotfiles/tmux.conf -O .tmux.conf
```

### Personal Terminal Shortcuts

```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/tree /bin/t
sudo ln -s /bin/ranger /bin/r
sudo ln -s /sbin/openvpn /sbin/vpn
```

### Keyboard Shortcuts

| Shortcuts             | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Ctrl + Alt + F        | Home folder                                                  |
| Ctrl + Alt + G        | Launch Web Browser                                           |
| Ctrl + Alt + D        | Hide all normal windows                                      |
| Ctrl + Alt + S        | Settings                                                     |
| Ctrl + Alt + Arrows   | Move to workspace (direction)                                |
| Super + Arrows        | Move window one workspace (direction)                        |
| Alt + Super + Arrows  | Tiling Windows to (direction)                                |
| Alt + W               | Close window                                                 |
| Ctril + Space         | Show the overview                                            |
| Ctrl + Alt + P        | `bash /home/kali/.config/polybar/launch.sh --shapes`         |
| Ctrl + Alt + M        | `Marktext`                                                   |
| Ctrl + Alt + V        | `virtualbox` <br> To list installed VM `vboxmanage list vms` |
| Ctrl + Alt + whatever | `vboxmanage startvm "vmname"`                                |

### Special Folders

```
nano .config/user-dirs.dirs
```
