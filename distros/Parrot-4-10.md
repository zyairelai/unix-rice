# Parrot KDE 4.10
### These are the Setup for my Parrot KDE 4.10s

1. [Initial Setup](#Initial-Setup)
	- [Workspace Behavior](#Workspace-Behavior)
	- [Display Scale](#Display-Scale)

2. [Panel Settings](#Panel-Settings)
	- [Top Panel](#top-panel)
	- [Bottom Panel](#Bottom-panel)

3. [Themes](#Themes)
	- [Basic Theme](#Basic-Theme)
	- [Installing Kvantum](#Installing-Kvantum)
	- [Install Kvantum Theme to local folder](#Install-Kvantum-Theme-to-local-folder)
	- [GTK Application Style](#GTK-Application-Style)

4. [Terminal](#Terminal)
    - [Basic Theme](#Basic-Theme)
    - [Zsh](#Zsh)
    - [Terminal Font](#Terminal-Font)

5. [Visual Studio Code](#Visual-Studio-Code)
    - [Setup for VSCode / Codium](#vscode-codium-setup)
    - [Install Devilspie](#Install-Devilspie)
    
6. [Problem Fixed](#Problem-Fixed)
    - [Fix Square Fonts](#Fix-Square-Fonts)
    - [Emoji Font Fixed](#Emoji-Font-Fixed)


# Initial Setup
### Workspace Behavior
`System Settings > Workspace Behavior > Desktop Effects `
- Blur - Strength = 60~70, Noise = 0
- Wobbly Windows  = 25%
- Magic Lamp      = 800milliseconds
 
`System Settings > Workspace Behavior > Screen Edges > Desktop Grid`

`System Settings > Workspace Behavior > Screen Locking > ALL NO`

`System Settings > Windows Management > Window Behavior > Advanced > Window placement: Centered / Smart`

System Settings > Windows Management > Task Switcher > [Medium Default](https://store.kde.org/p/1367158) / Large Icons

System Settings > Windows Management > KWin Scripts > [Force Blur](https://store.kde.org/p/1294604)

System Settings > Application Style > Window Decoration > [Aritim-Dark](https://store.kde.org/p/1320512)

System Settings > Application Style > GNOME/GTK > [Sweet](https://store.kde.org/p/1253385/)

### Display Scale
- `System Settings > Fonts > Force Font DPI: 120 or 144`
- Referece : https://www.reddit.com/r/kde/comments/9dt46l/kde_display_scaling/


# Panel Settings
<a name="top-panel"></a>
### Top Panel - Application Menu Bar
1. Application Launcher  
2. System Tray  
3. [Split Digital Clock](https://store.kde.org/p/1324315)  
            - Show Date  
            - Show Separator  
            - Custom Date Format > `dddd dd MMM yyyy`  
            - `50%` Height Percentage of Horizontal Panel  

<a name="bottom-panel"></a>
### Bottom Panel - Default Panel 
1. Application Launcher  
2. Pager  
3. Show Desktop  
4. Task Manager  


# Themes
### Basic Theme
System Settings > Global Theme > [Sweet KDE](https://store.kde.org/p/1294729)  
System Settings > Plasma Style > [Sweet KDE](https://store.kde.org/p/1294174)  
System Settings > Icons > [Candy Icons](https://store.kde.org/p/1305251)  
System Settings > Icons > [Sweet Folders](https://store.kde.org/p/1284047)  

### Installing Kvantum
- [Kvantum's Github](https://github.com/tsujan/Kvantum/tree/master/Kvantum)  
- `sudo apt install qt5-style-kvantum qt5-style-kvantum-themes`

### Install Kvantum Theme to local folder
- [Kvantum Sweet KDE](https://store.kde.org/p/1294013/) > Sweet.tar.xz	
- Extract and move to `/home/$USER/.kde/`
- Open Kvantum and Install Theme
- Select Sweet as Theme
- `Kvantum Active Theme > Compositing & General Look > Translucent Windows > Reduce Windows Opacity by 30%`

### GTK Application Style
- `System Settings > Application Style > GNOME/GTK Application Style > Sweet-Ambar-Blue`
- `System Settings > Application Style > Window Decoration > Aritim-Dark`


# Terminal
### Basic Theme
- `Settings > Edit Current Profile > Appearance > Sweet`
- `Edit the Blue Scheme on Color 5`
- `Blur background with 30% Transparency`

### Zsh
- `sudo apt install zsh tmux fonts-powerline`
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [PowerLevel10k](https://github.com/romkatv/powerlevel10k)
- `Settings > Edit Current Profile > General > /bin/zsh`

### Terminal Font
- [Hack Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf)


# Visual Studio Code

<a name="vscode-codium-setup"></a>
### Setup for VSCode / Codium
[Making VSCode Transparent](https://github.com/microsoft/vscode/issues/12578#issuecomment-444781951)

### Install Devilspie
- [How to be cool and make Visual Studio Code (VSCode) transparent](https://dev.to/emmanuelnk/how-to-be-cool-and-make-vscode-transparent-56ib)
- `sudo apt-get install devilspie`
- `mkdir -p ~/.devilspie`
- `cp vscode.ds ~/.devilspie/vscode.ds`


# Problem Fixed
### Fix Square Fonts
- `System Settings > Application Style > GNOME/GTK Application Style > Sans Serif 10`
- Reference: https://community.parrotsec.org/t/parrot-4-8-bug-report/12224/15  

### Emoji Font Fixed
- `sudo apt reinstall fonts-noto-color-emoji`