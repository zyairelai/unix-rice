### To Clean Up APT Bundles
- https://github.com/davidfoerster/aptsources-cleanup
```
sudo apt install python3-apt python3-regex
chmod a+x aptsources-cleanup.pyz
sudo ./aptsources-cleanup.pyz
```

### Fixing Emoji Problem
- `sudo apt reinstall fonts-noto-color-emoji`

### Fix VirtualBox Guest Permission
- `sudo adduser $USER vboxsf`
