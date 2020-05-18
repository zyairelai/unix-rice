# MUST CHECK
sudo cp /bin/xdg-open /bin/open
sudo apt install git curl tree screenfetch

cp hardcoding.jpg /home/zyaire/Pictures/
mkdir /home/zyaire/Desktop/git
mkdir /home/zyaire/Desktop/git/MyProject
git clone https://github.com/louiszhenyean/hackthebox /home/zyaire/Desktop/hackthebox
ln -s /home/zyaire/Desktop/git ~/git
ln -s /home/zyaire/Desktop/hackthebox ~/hackthebox

# For Customization
sudo apt install chrome-gnome-shell
sudo apt install gnome-tweak-tool
sudo apt install fonts-powerline

# Installing Zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# ~/.zshrc. Set ZSH_THEME="powerlevel9k/powerlevel9k" 
chsh -s $(which zsh)


# For Development
sudo apt install nmap wireshark
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit

# PDFtk is to split and merge PDF files
sudo apt install pdftk
