# Zyubuntu
Setup for my Ubuntu Desktop, install and uninstall some applications that I always use and never use.  
Also some configurations for the Desktop, Icons and keyboard shortcut.  

# Prerequisite
```
sudo apt install git curl
git clone https://github.com/louiszhenyean/Zyubuntu.git
git clone https://github.com/louiszhenyean/hackthebox /home/zyaire/Desktop/hackthebox
```

https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf

# Self changing settings
`sudo ./install.sh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

Edit `~/.zshrc` 
```
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
```

```chsh -s $(which zsh)```

# Install SearchSploit
`sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb`

`sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc`

`sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit`


# Install Gnome Extensions
https://extensions.gnome.org/extension/19/user-themes/

https://extensions.gnome.org/extension/307/dash-to-dock/
