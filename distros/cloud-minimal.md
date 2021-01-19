### Installing Daily Tools
```
sudo apt install python3-pip git wget zsh tmux tree htop 
```

### Setup ZSH
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/OscarAkaElvis/zsh-parrot-theme

cp zsh-parrot-theme/parrot.zsh-theme ~/.oh-my-zsh/themes/
rm -rf zsh-parrot-theme 

chsh -s $(which zsh)
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

nano ./.oh-my-zsh/lib/directories.zsh
❗ alias ll='ls -lh --group-directories-first'
source ./.oh-my-zsh/lib/directories.zsh
```

### Extra Setup
- passwd user
- `disable r` in `.zshrc`
- Setup `API Key` in `.zshrc`
- `source .zshrc && source .tmux.conf`
