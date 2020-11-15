# Ubuntu 20.04 LTS
This is the Setup for Ubuntu 20.04 LTS


# Install daily necessary tools
```
sudo apt install chrome-gnome-shell gnome-tweak-tool fonts-powerline fonts-noto-color-emoji tree neofetch zsh tmux tilix python-nautilus 
```


# Desktop & Terminal Theme
```
sudo cp "Wallpapers/retro-coffee-shop.jpg" "/usr/share/backgrounds/"
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/retro-coffee-shop.jpg"
cp ~/.bashrc ~/.bashrc.bck
cp Terminal/bashrc-kali-2019 ~/.bashrc
source .bashrc
cp Terminal/tmux.conf ~/.tmux.conf
tmux source-file .tmux.conf
```


# Install Nerd-Fonts (Terminal Emoji)  
https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf


# Zsh Setup
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

```
cp Terminal/zshrc ~/.zshrc
chsh -s $(which zsh)
sudo update-alternatives --config x-terminal-emulator
```

For OCD, can replace the Tilix to the default Terminal icon  
```
/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg
```

This is the Tilix setup for Ubuntu 20.04, perhaps thing changes every updates  
```
sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg
```


# VirtualBox Issues Fixed

Cannot install Guest Additions on Debian

Edit `/etc/fstab`

Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```


# To fix `fonts-noto-color-emoji` sometimes
```
sudo apt reinstall fonts-noto-color-emoji
```
