# MUST CHECK
sudo cp /bin/xdg-open /bin/open

mkdir /home/zyaire/Desktop/git
mkdir /home/zyaire/Desktop/git/MyProject
git clone https://github.com/louiszhenyean/hackthebox /home/zyaire/Desktop/hackthebox
ln -s /home/zyaire/Desktop/git ~/git
ln -s /home/zyaire/Desktop/hackthebox ~/hackthebox
cp hardcoding.jpg /usr/share/backgrounds/

# For Customization
sudo apt install chrome-gnome-shell gnome-tweak-tool fonts-powerline screenfetch tree zsh nmap

# Installing Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# For Development
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
