## Ubuntu Scanner
These are the Setup for my Ubuntu Scanner (8GB RAM / 100GB Storage)
- https://www.rapid7.com/products/nexpose/system-requirements/

### Alias ll into .bashrc
```
alias ll='ls -lh --group-directories-first'
```

### Personal Terminal Shortcuts
```
sudo ln -s /bin/xdg-open /bin/open
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/screen /bin/sc
```

### Nexpose quick script
```
echo "sudo systemctl start nexposeconsole" >> start.sh 
echo "sudo systemctl status nexposeconsole" >> check.sh 
echo "sudo systemctl stop nexposeconsole" >> stop.sh 
```
```
echo "wget http://download2.rapid7.com/download/NeXpose-v4/NeXposeSetup-Linux64.bin && chmod +x NeXposeSetup-Linux64.bin && sudo ./NeXposeSetup-Linux64.bin -c
rm ./NeXposeSetup-Linux64.bin" >> update.sh 
```

## Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

## Bookmark
- https://127.0.0.1:3780 
- https://temp-mail.org/en/
- https://www.rapid7.com/try/nexpose/
- https://www.rapid7.com/try/insight/

# LUXURIES

### Installing Gnome Extensions
- https://extensions.gnome.org/extension/19/user-themes/

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg tilix python3-nautilus fonts-noto-color-emoji screen mlocate nmap sshuttle wafw00f whatweb tree htop
```
Change to Tilix Default
```
sudo update-alternatives --config x-terminal-emulator
```

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

### OpenVAS
- https://www.howtoforge.com/how-to-install-and-use-gvm-vulnerability-scanner-on-ubuntu-20-04/
- https://stackoverflow.com/questions/46013544/yarn-install-command-error-no-such-file-or-directory-install
- https://www.youtube.com/watch?v=3CTJwioLKnQ&ab_channel=OPENVAS
- https://www.youtube.com/watch?v=zxzB5n1vRJE&ab_channel=HACKER_SHAHZADKHAN_777
```
sudo apt install gvm 
sudo gvm-setup
(Wait for about 20 mintues and get that generated admin username and password!!!)
sudo apt install ufw
sudo ufw allow 80
sudo ufw allow 9392
sudo gvm-start
```
View Logs
```
sudo cat /var/log/gvm/gvmd.log
```
Trouble Shooting
- https://www.reddit.com/r/debian/comments/qsinpq/openvas_setup_postgresql_permission_problem/
- https://community.greenbone.net/t/gvm-as-root/3314
- https://community.greenbone.net/t/scan-config-cant-be-created-failed-to-find-config-daba56c8-73ec-11df-a475-002264764cea/8938/3
```
sudo gvm-feed-update
sudo -u kali gvmd --create-user=admin
sudo gvmd --create-user=admin
```
