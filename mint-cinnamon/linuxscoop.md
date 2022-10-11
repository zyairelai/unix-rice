# Linux Mint Cinnamon 

### Customize Linux Mint 21 Cinnamon with Nord Color Style
- https://www.pling.com/p/1884794/

### Glava Radial Nord Color Theme
- https://www.pling.com/p/1885500/

### Whitesur-GTK-Theme-nord
```
sudo apt install git
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install --nord
```

### Nordzy Icon
```
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon
./install.sh --total
```

### Nordzy Cursors
```
git clone https://github.com/alvatip/Nordzy-cursors.git
cd Nordzy-cursors
./install.sh
```

### Fonts and Wallpapers
```
unzip fonts.zip -d ~/.local/share/
unzip wallpapers.zip -d ~/.local/share/
```

### Cinnamon Desktop Config and Tweaks
```
dconf load /org/cinnamon/ < cinnamon-nord.conf
```

### Plank Dock
```
sudo apt install plank
unzip plank-dock-theme.zip -d ~/.local/share/plank/themes/
```

### ulauncher
```
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb
sudo dpkg -i ulauncher_5.15.0_all.deb
mkdir ~/.config/ulauncher/user-themes
unzip ulauncher-theme.zip -d ~/.config/ulauncher/user-themes/
```

### Conky
```
sudo apt install conky-all jq curl moc
unzip conky-config.zip -d ~/.config/
cp ~/.config/conky/conky-startup.desktop ~/.config/autostart/
sudo bash -c "echo 'MUFFIN_NO_SHADOWS=1' >> /etc/environment"
```

### Glava Audio Visualizer
```
sudo apt install libgl1-mesa-dev libpulse0 libpulse-dev libxext6 libxext-dev libxrender-dev libxcomposite-dev liblua5.3-dev liblua5.3 lua-lgi lua-filesystem libobs0 libobs-dev meson build-essential gcc 
```
```
sudo ldconfig
```
```
git clone https://gitlab.com/wild-turtles-publicly-release/glava/glava.git
cd glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install
glava --copy-config
```
```
mv ~/.config/glava/radial.glsl ~/.config/glava/radial.glsl.00
mv ~/.config/glava/rc.glsl ~/.config/glava/rc.glsl.00
unzip glava-config.zip
mv radial.glsl ~/.config/glava/
mv rc.glsl ~/.config/glava/
mv glava-startup.desktop ~/.config/autostart/
mv ~/.config/glava/radial.glsl ~/.config/glava/radial.glsl.original
mv ~/.config/glava/radial.glsl ~/.config/glava/radial.glsl.original
glava --desktop
```
```
sudo apt install nautilus nautilus-admin python3-nautilus
```
- Go to System Settings > Login Window > Background

Save all my setup
```
dconf dump /org/cinnamon/ > cinnamon.dconf
```