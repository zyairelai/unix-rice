# Zyubuntu
Setup for my Ubuntu Desktop, install and uninstall some applications that I always use and never use.  
Also some configurations for the Desktop, Icons and keyboard shortcut.  

# Prerequisite
Install all the requirements and tools  
```
sudo apt install git curl python3-pip pipenv chrome-gnome-shell gnome-tweak-tool fonts-powerline fonts-noto-color-emoji tree neofetch zsh tmux tilix python-nautilus nmap nikto 
````

Clone the repository
```
git clone https://github.com/louiszhenyean/Zyubuntu /home/$USER/Desktop/Zyubuntu
git clone https://github.com/louiszhenyean/hackthebox /home/$USER/Desktop/hackthebox
```

Copy the files and make activate the configurations
```
cd /home/$USER/Desktop/git
mkdir /home/$USER/Desktop/git
ln -s /home/$USER/Desktop/git ~/git
ln -s /home/$USER/Desktop/hackthebox ~/hackthebox  
cp hardcoding.jpg /usr/share/backgrounds/
gsettings set org.cinnamon.desktop.background picture-uri "/usr/share/backgrounds/hardcoding.jpg"
cp tmux.conf ~/.tmux.conf
cp ~bashrc ~/.bashrc.bck
cp bashrcKali2019 ~/.bashrc
source .bashrc
tmux source-file .tmux.conf
```

# Install Nerd-Fonts (Terminal Emoji)  
https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
```
sudo mv "nerd-font.ttf" /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
```

# Self changing setting
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

```
cp zshrc ~/.zshrc
chsh -s $(which zsh)
sudo update-alternatives --config x-terminal-emulator
```

For OCD, can replace the Tilix to the default Terminal icon  
```
/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg
```

This is the command for Ubuntu 20.04, but thing changes every updates  
```
sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg
```

# Personal Shortcuts
Always use easy shortcuts, lol
```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/python3 /bin/py
sudo ln -s /bin/python3 /bin/python
sudo ln -s /bin/bash /bin/b
sudo ln -s /bin/zsh /bin/z 
```

# Install SearchSploit
```
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
```

```
sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc
```

```
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
```


# Install Gnome Extensions
https://extensions.gnome.org/extension/19/user-themes/

https://extensions.gnome.org/extension/307/dash-to-dock/

https://extensions.gnome.org/extension/16/auto-move-windows/

https://extensions.gnome.org/extension/905/refresh-wifi-connections/

Cannot install Guest Additions on Debian

# VirtualBox Issues Fixed
Edit `/etc/fstab`

Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```

# Github Store User Credentials
https://www.freecodecamp.org/news/how-to-fix-git-always-asking-for-user-credentials/

# To fix `fonts-noto-color-emoji` sometimes
```
sudo apt reinstall fonts-noto-color-emoji
```
