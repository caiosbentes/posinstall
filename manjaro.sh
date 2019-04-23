#!/bin/bash
#Script para instalar os programas necessários

echo Atualizar sistema

pacman -Syyu --noconfirm
pacman -S yay --noconfirm
yay -S google-chrome --noconfirm
sudo pacman -S leafpad gedit mousepad --noconfirm ; sudo pacman -Sy
1) sudo pacman -S vlc --noconfirm

2) sudo pacman -S smplayer --noconfirm

3) sudo pacman -S rhythmbox --noconfirm
sudo pacman -Syu aegisub audacious audacity avidemux cheese pavucontrol deadbeef drumstick easytag quodlibet gaupol handbrake kamoso qmmp simplescreenrecorder caprine chromium deluge eolie falkon firefox rssguard-nowebengine telegram-desktop youtube-dl tor aria2 uget atril bookworm calibre fbreader freemind okular qpdfview sigil drumstick gcompris-qt buoh catfish clamtk conky-manager scribes terminator keepass l3afpad seahorse vim darktable filezilla firefox gimp smplayer inkscape isomaster qbittorrent sound-juicer tomahawk uget vlc firejail gufw firewalld rhythmbox

sudo pacman -S dropbox
