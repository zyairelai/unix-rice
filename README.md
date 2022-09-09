## Unix-Rice 

Setup for my Desktop, some configurations for my Desktop themes and shortcuts. 

### My daily use setup
- [Ubuntu 20.04 LTS](https://github.com/zyairelai/unix-rice/blob/master/distros/Ubuntu-20-04.md)
- [Kali 2022.2](https://github.com/zyairelai/unix-rice/blob/master/distros/kali-xfce.md)
- [Bug Bounty Essentials](https://github.com/zyairelai/unix-rice/blob/master/distros/bug-bounty-essentials.md)

### Firefox Setup
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`

### Special Folders
- ` ~/.config/user-dirs.dirs`

### Delete Boot Menu
- https://unix.stackexchange.com/questions/552728/removed-both-linux-installations-but-bios-still-shows-them-in-boot-options
- `bcdedit /enum firmware`
- `bcdedit /delete <identifier>`
