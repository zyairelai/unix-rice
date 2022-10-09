# Kali XFCE 2022.2 Setup
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/setup.sh`
- `chmod a+x setup.sh`
- `sudo ./setup.sh`
- `./local.sh`

### No Sudo Password Policy
- `sudo dpkg-reconfigure kali-grant-root`

### Debian Package for Tilix
- `sudo nano /etc/apt/sources.list`
- `sudo apt install tilix`

### Firefox Configuration
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

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