## Linux Mint NX Scanner
These are the Setup for my Linux Mint NX Scanner (Min 6144MB RAM / 100GB Storage / 2 Cores)
- https://www.rapid7.com/products/nexpose/system-requirements/

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg screen mlocate nmap ufw sshuttle wafw00f whatweb tree htop
sudo ufw allow 3780
```
### If using tilix
```
sudo apt install tilix
sudo update-alternatives --config x-terminal-emulator
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
```

### Power Settings
- Set to never go to sleep

### Alias ll into .bashrc
```
nano .bashrc
alias ll='ls -lh --group-directories-first'
```

### Personal Terminal Shortcuts
```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/htop /bin/h
sudo ln -s /bin/screen /bin/sc
```

### Nexpose quick script
```
echo "sudo systemctl start nexposeconsole" >> start.sh 
echo "sudo systemctl status nexposeconsole" >> check.sh 
echo "sudo systemctl stop nexposeconsole" >> stop.sh 
```
```
wget http://download2.rapid7.com/download/NeXpose-v4/NeXposeSetup-Linux64.bin
chmod +x NeXposeSetup-Linux64.bin && sudo ./NeXposeSetup-Linux64.bin -c
```

## Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

## Bookmark
- https://127.0.0.1:3780 
- https://temp-mail.org/en/
- https://www.rapid7.com/try/nexpose/

### Keyboard Shortcuts

| Shortcuts             | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Ctrl + Alt + F        | Home folder                                                  |
| Ctrl + Alt + G        | Launch Web Browser                                           |
| Ctrl + Alt + S        | Settings                                                     |
| Alt + W               | Close window                                                 |
| Ctrl + Space          | Show all applications                                        |

### Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### README
```
1. There are 3 scripts in the home folder
	- check.sh (to check the status of nexpose)
	- start.sh (to start the nexpose service)
	- stop.sh  (to stop the nexpose service)

2. Run `./check.sh` command to check the status of the nexpose service, if it is not started, run `./start.sh` command to start the nexpose service

3. Open Firefox, there are 3 bookmarked tabs. 
	- https://127.0.0.1:3780/
	- Temp Mail
	- Try Nexpose

4. Open https://127.0.0.1:3780/ and let it run for a bit, it is very slow as it will always auto fetch the newest vulnerability from the Rapid7 source. (Sometimes it will take few hours, even whole day)

5. Go to `Temp Mail` and you will get yourself a ready email address, keep this tab open.

6. Open `Try Nexpose` and key in any valid input (anything will do) however on the email tab, put the email you got from the `Temp Mail`

7. After registering `Try Nexpose`, you should get your 1 month License key on `Temp Mail`.

8. Once https://127.0.0.1:3780/ portal is ready, you can login using `nexpose:nexpose` as credential, and enter the license key from your `Temp Mail`

9. Whenever your license key expired, you can always revert back to the `Golden State` and restart the process.
```
