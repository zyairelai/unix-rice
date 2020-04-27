mv ~/usr/bin/python3 ~/usr/bin/python

mv gnome-shell-theme/Kali-X /usr/share/themes/
mv gnome-shell-theme/Kali-X-Dark /usr/share/themes/
mv icon-theme/Vibrancy-Kali /usr/share/icons/
mv icon-theme/Vibrancy-Kali-Dark /usr/share/icons/
mv icon-theme/Vibrancy-Kali-Full-Dark /usr/share/icons/

apt install net-tools git screenfetch tree pdftk gnome-tweaks telegram-desktop python3-pip nmap wireshark
apt remove texlive*

echo "#hackthebox" >> ~/.bashrc 
echo "export hackthebox=/home/zyaire/Desktop/hackthebox" >> ~/.bashrc 
echo "export htb=$hackthebox" >> ~/.bashrc 
echo "" >> ~/.bashrc

mkdir /home/zyaire/Desktop/git
mkdir /home/zyaire/Desktop/MyProject
echo "#GitHub" >> ~/.bashrc
echo "export github=/home/zyaire/Desktop/git" >> ~/.bashrc
echo "export git=$github" >> ~/.bashrc
echo "export myProject=/home/zyaire/Desktop/git/MyProject" >> ~/.bashrc
echo "export me=$myProject" >> ~/.bashrc
