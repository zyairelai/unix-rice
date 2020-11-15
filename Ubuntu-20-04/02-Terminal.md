### Check if `zsh` is installed
- `sudo apt install zsh tmux fonts-powerline`

### Bash & Tmux Setup
```
cp ~/.bashrc ~/.bashrc.bck
cp Terminal/bashrc-kali-2019 ~/.bashrc
source .bashrc
cp Terminal/tmux.conf ~/.tmux.conf
tmux source-file .tmux.conf
```

### Installing Nerd-Fonts (Terminal Emoji)
- https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf

### Zsh Setup
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`  
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`  

```
cp Terminal/zshrc ~/.zshrc
chsh -s $(which zsh)
```

# Tilix (Optional)
### Installing Tilix and Open Tilix Here
- `sudo apt install tilix nautilus-python`
- `sudo update-alternatives --config x-terminal-emulator`

### For OCD, can replace the Tilix to the default Terminal icon
- `/usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`

### This is the Tilix setup for Ubuntu 20.04, perhaps thing changes every updates  
- `sudo cp '/usr/share/icons/Yaru/256x256@2x/apps/gnome-terminal.png' /usr/share/icons/hicolor/scalable/apps/com.gexperts.Tilix.svg`
