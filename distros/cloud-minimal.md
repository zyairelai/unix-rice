### Installing Daily Tools
```
sudo apt install python3-pip git wget zsh tmux tree htop 
```

### Setup ZSH
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

nano ~/.oh-my-zsh/lib/directories.zsh
❗ alias ll='ls -lh --group-directories-first'

nano ~/.zshrc
❗ disable r
❗ export API
❗ ZSH_THEME="juanghurtado"

source .zshrc
source .tmux.conf
source ~/.oh-my-zsh/lib/directories.zsh
```

### Setup Shortcut Key
```
sudo ln -s /bin/python3.7 /bin/python
sudo ln -s /bin/python3.7 /bin/py
sudo ln -s /bin/clear /bin/c
sudo ln -s /bin/bash /bin/b
sudo ln -s /bin/zsh /bin/z

echo -e "sudo su louiszhenyean" > louiszhenyean.sh
sudo mv louiszhenyean.sh /bin/
sudo ln -s /bin/louiszhenyean.sh /bin/lo

echo -e "# Change the prefix key to C-a\nset -g prefix C-a\nunbind C-b\nbind C-a send-prefix\nset-option -g mouse on" > .tmux.conf
```

### Extra Setup
- passwd user

### Pip3 Install
```
pip3 install apscheduler
pip3 install cryptography==3.2 
pip3 install python-binance
pip3 install python-telegram-bot
pip3 install termcolor
```
