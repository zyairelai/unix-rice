# Ubuntu 20.04 LTS
This is the Setup for Ubuntu 20.04 LTS

# Wallpaper
```
sudo cp "Wallpapers/retro-coffee-shop.jpg" "/usr/share/backgrounds/"
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/retro-coffee-shop.jpg"
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
