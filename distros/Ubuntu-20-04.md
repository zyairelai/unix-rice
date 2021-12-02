# Ubuntu 20.04 LTS
These are the Setup for my Ubuntu 20.04 LTS

# Installing Tools for Daily Use
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
- `sudo apt remove gnome-shell-extension-ubuntu-dock`

<a name="tilix"></a>
## Tilix (Optional)
### Set Tilix As Default Terminal
- `sudo update-alternatives --config x-terminal-emulator`

### For OCD, can replace the Tilix to the default Terminal icon
- `/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`

### This is the Tilix setup for Ubuntu 20.04, perhaps thing changes every updates  
- `sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`


# Problem Fixed
## VirtualBox Issues Fixed
Error: `Cannot install Guest Additions on Debian`  
Edit `/etc/fstab`  
Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```

## Emoji Font Fixed
`sudo apt reinstall fonts-noto-color-emoji`

## Local Time Fixed
`timedatectl set-local-rtc 1 --adjust-system-clock`

## Emoji Font Fixed
- https://www.py4u.net/discuss/1121744
