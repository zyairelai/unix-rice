### To Clean Up APT Bundles
- https://github.com/davidfoerster/aptsources-cleanup
```
sudo apt install python3-apt python3-regex
chmod a+x aptsources-cleanup.pyz
sudo ./aptsources-cleanup.pyz
```

### DNS Error Chrome: DNS_PROBE_FINISHED_NXDOMAIN, Firefox similar
- https://askubuntu.com/questions/951057/ubuntu-dns-error-chrome-dns-probe-finished-nxdomain-firefox-similar

### Windows and Linux Showing Different Times When Dual Booting
- https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/

### Boots to black screen with flashing cursor
- https://www.py4u.net/discuss/1121744

### Emoji Font
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
