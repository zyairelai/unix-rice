# Ubuntu 20.04 LTS
These are the Setup for my Ubuntu 20.04 LTS

## Install from Snap / Software Center
- Discord
- Sublime Text
- Visual Studio Code
- `sudo snap install --classic heroku`

## Installing Gnome Extensions
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

## Uninstall Unnecessary Extensions
```
sudo apt install gnome-tweak-tool totem virtualbox && sudo apt remove gnome-shell-extension-ubuntu-dock
```

## Change Login Background
```
sudo apt install libglib2.0-dev-bin
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
chmod +x change-gdm-background
sudo cp change-gdm-background /usr/share/backgrounds/
sudo ./change-gdm-background /path/to/image
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
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/kali-2019.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/ubuntu-20-4.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/dotfiles/tmux.conf -O ~/.tmux.conf
```

## Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

## Add Kali Repo
https://miloserdov.org/?p=3609
```
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
sudo sh -c "echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list"
```
To avoid breaking the Ubuntu, create a file at `/etc/apt/preferences.d/kali.pref ` with following contents:
```
Package: *
Pin: release a=kali-rolling
Pin-Priority: 50
```
