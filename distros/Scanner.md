## Ubuntu Nexpose
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
