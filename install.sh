mv gnome-shell-theme/Kali-X /usr/share/themes/
mv gnome-shell-theme/Kali-X-Dark /usr/share/themes/
mv icon-theme/Vibrancy-Kali /usr/share/icons/
mv icon-theme/Vibrancy-Kali-Dark /usr/share/icons/
mv icon-theme/Vibrancy-Kali-Full-Dark /usr/share/icons/

mkdir /home/zyaire/Desktop/git
mkdir /home/zyaire/Desktop/git/MyProject
ln -s /home/zyaire/Desktop/git ~/git
ln -s /home/zyaire/Desktop/hackthebox ~/hackthebox

# PDFtk is to split and merge PDF files
sudo apt install pdftk

# MUST CHECK
sudo apt install git  
sudo apt install curl
sudo apt install tree
sudo apt install screenfetch

# For Customization
sudo apt install gnome-tweaks-tool
sudo apt install fonts-powerline

# For Development
sudo apt install nmap 
sudo apt install wireshark
