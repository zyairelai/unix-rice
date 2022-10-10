# Kali XFCE 2022.2 Setup
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/setup.sh
chmod a+x setup.sh
sudo ./setup.sh
```
- `./local.sh`

### Firefox Configuration
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

# Rebooting After running `local.sh`

### No Sudo Password Policy
```sudo dpkg-reconfigure kali-grant-root```

### Disable Sublime Update Prompt
- Go to `Preferences` -> `Settings` and add the following:
```
{
	"update_check": false,
	"font": 14
}
```
- https://gist.github.com/OrionUnix/51ae230f5f9ea6c332b5639f556cc1d6
- https://gist.github.com/rajibdpi/2ea3a97d025793e26225c69deb4d5768
