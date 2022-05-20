## Ubuntu Scanner
These are the Setup for my Ubuntu Scanner

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

### Installing Gnome Extensions
- https://extensions.gnome.org/extension/19/user-themes/

### Must HAVE Apps!!!
```
sudo apt install git wget curl gnupg python3-pip fonts-noto-color-emoji screen mlocate gnome-tweak-tool nmap nikto sshuttle wafw00f whatweb build-essential
```

[RustScan](https://doc.rust-lang.org/cargo/getting-started/installation.html)
```
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan
```

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

### Keyboard Shortcuts

| Shortcuts             | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Ctrl + Alt + F        | Home folder                                                  |
| Ctrl + Alt + G        | Launch Web Browser                                           |
| Ctrl + Alt + D        | Hide all normal windows                                      |
| Ctrl + Alt + S        | Settings                                                     |
| Ctrl + Alt + Arrows   | Move to workspace (direction)                                |
| Super + Arrows        | Move window one workspace (direction)                        |
| Alt + Super + Arrows  | Tiling Windows to (direction)                                |
| Alt + W               | Close window                                                 |
| Ctrl + Space          | Show all applications                                        |
| Super + D             | `dash-to-dock`                                               |
| Ctrl + Alt + M        | `Marktext`                                                   |
| Ctrl + Alt + V        | `virtualbox` <br> To list installed VM `vboxmanage list vms` |
| Ctrl + Alt + whatever | `vboxmanage startvm "vmname"`                                |

### Local Time Fixed
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### Nexpose quick script
```
echo "sudo systemctl start nexposeconsole" >> start.sh 
echo "sudo systemctl status nexposeconsole" >> status.sh 
echo "sudo systemctl stop nexposeconsole" >> stop.sh 
echo "wget http://download2.rapid7.com/download/NeXpose-v4/NeXposeSetup-Linux64.bin && chmod +x NeXposeSetup-Linux64.bin && sudo ./NeXposeSetup-Linux64.bin -c
rm ./NeXposeSetup-Linux64.bin" >> update.sh 
```

### OpenVAS
- https://www.howtoforge.com/how-to-install-and-use-gvm-vulnerability-scanner-on-ubuntu-20-04/
- https://stackoverflow.com/questions/46013544/yarn-install-command-error-no-such-file-or-directory-install
- https://www.youtube.com/watch?v=3CTJwioLKnQ&ab_channel=OPENVAS
- https://www.youtube.com/watch?v=zxzB5n1vRJE&ab_channel=HACKER_SHAHZADKHAN_777

Add Kali Repository
```
deb http://http.kali.org/kali kali-rolling main contrib non-free
```
Add Public Keys
```
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ED444FF07D8D0BF6
```
Install GVM
```
sudo apt install gvm 
sudo gvm-setup
(Wait for about 20 mintues and get that generated admin username and password!!!)
sudo apt install ufw
sudo ufw allow 80
sudo ufw allow 9392
sudo gvm-start
```
If there is any issue during the installation
```
sudo gvm-check-setup
```
