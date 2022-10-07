#!/bin/bash
# ver. 0.1

SOURCEDIR=/home/deck/Downloads/SteamScript/

echo "Set a password for the deck suser."
passwd
echo "Disable the read-only policy."
sudo steamos-readonly disable

echo "Expand the SWAP file."
cd /home
sudo swapoff -a
sudo dd if=/dev/zero of=swapfile bs=1G count=10
sudo mkswap swapfile
sudo swapon swapfile

echo "Convert internal storage to BTRFS."
sudo $SOURCEDIR/btrfs
./install
echo "Convert external storage to BTRFS."
sudo rm /usr/lib/hwsupport/sdcard-mount.sh
sudo rm /usr/lib/hwsupport/format-sdcard.sh
sudo cp $SOURCEDIR/btrfs/sdcard-mount.sh /usr/lib/hwsupport
sudo cp $SOURCEDIR/btrfs/format-sdcard.sh /usr/lib/hwsupport
sudo chmod 755 /usr/lib/hwsupport/sdcard-mount.sh
sudo chmod 755 /usr/lib/hwsupport/format-sdcard.sh
sudo chown deck:deck -R /run/media/mmcblk0p1/

echo "Initiate the package manager."
sudo pacman-key --init
sudo pacman-key --pupulate archlinux
#sudo pacman-key --refresh
sudo pacman -Syu

echo "Install TUI / GUI tools through Pacman."
sudo pacman -S git
sudo pacman -S base-devel
#sudo pacman -S nano
#sudo pacman -S bash-completion
sudo pacman -S bpytop
sudo pacman -S cpu-x
sudo pacman -S kdiskmark
sudo pacman -S peazip-qt-bin
sudo pacman -S gparted
sudo pacman -S exfatprogs
sudo pacman -S ntfs-3g
sudo pacman -S papirus-icon-theme
#sudo pacman -S packagekit-qt5
#sudo pacman -S flatpak
#sudo pacman -S fwupd

echo "Setup Neofetch, a TUI system information utility."
sudo pamcan -S neofetch
mkdir /home/deck/Pictures/.neofetch
cp $SOURCEDIR/logo/SteamDeck.jpg /home/deck/Pictures/.neofetch
sudo echo "neofetch --jp2a /home/deck/Pictures/.neofetch/SteamDeck.jpg" >> ~/.bashrc
source ~/.bashrc

#echo "Setup YAY, a TUI Arch User Repository helper."
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#yay
#yay -S octopi
#yay -S vkbasalt
#yay -S goverlay-bin

#echo "Install ReplaySorcery, a TUI video capture utility (Ctrl+Super+R)."
#yay -S replay-sorcery-git
#sudo systemctl --user enable --now replay-sorcery
#sudo systemctl enable --now replay-sorcery-kms
#sudo rm ~/.config/replay-sorcery.conf
#sudo cp $SOURCEDIR/replay-sorcery.conf ~/.config/replay-sorcery.conf
#sudo systemctl --user restart replay-sorcery

echo "Install TUI / GUI tools through Flathub."
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.google.Chrome
flatpak install flathub nz.mega.MEGAsync
flatpak install flathub org.x.Warpinator
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub tv.kodi.Kodi
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.github.KRTirtho.Spotube
flatpak install flathub io.posidon.Paper
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak install flathub io.github.giantpinkrobots.bootqt
flatpak install flathub com.steamgriddb.steam-rom-manager
flatpak install flathub com.steamgriddb.SGDBoop
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.Matoking.protontricks
flatpak install com.valvesoftware.Steam.Utility.steamtinkerlaunch
flatpak install flathub org.polymc.PolyMC
flatpak install flathub net.displaycal.DisplayCAL net.displaycal.DisplayCAL
flatpak install flathub space.crankshaft.Crankshaft

flatpak --user override --filesystem=/run/udev:ro com.github.tchx84.Flatseal
flatpak --user override --filesystem=/run/udev:ro com.google.Chrome
flatpak --user override --filesystem=/run/udev:ro nz.mega.MEGAsync
flatpak --user override --filesystem=/run/udev:ro org.x.Warpinator
flatpak --user override --filesystem=/run/udev:ro org.qbittorrent.qBittorrent
flatpak --user override --filesystem=/run/udev:ro tv.kodi.Kodi
flatpak --user override --filesystem=/run/udev:ro flathub com.bitwarden.desktop
flatpak --user override --filesystem=/run/udev:ro com.discordapp.Discord
flatpak --user override --filesystem=/run/udev:ro com.github.KRTirtho.Spotube
flatpak --user override --filesystem=/run/udev:ro io.posidon.Paper
flatpak --user override --filesystem=/run/udev:ro org.libreoffice.LibreOffice
flatpak --user override --filesystem=/run/udev:ro org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak --user override --filesystem=/run/udev:ro io.github.giantpinkrobots.bootqt
flatpak --user override --filesystem=/run/udev:ro com.steamgriddb.steam-rom-manager
flatpak --user override --filesystem=/run/udev:ro com.steamgriddb.SGDBoop
flatpak --user override --filesystem=/run/udev:ro net.davidotek.pupgui2
flatpak --user override --filesystem=/run/udev:ro com.github.Matoking.protontricks
flatpak --user override --filesystem=/run/udev:ro com.valvesoftware.Steam.Utility.steamtinkerlaunch
flatpak --user override --filesystem=/run/udev:ro org.polymc.PolyMC
flatpak --user override --filesystem=/run/udev:ro net.displaycal.DisplayCAL
flatpak --user override --filesystem=/run/udev:ro space.crankshaft.Crankshaft

echo "Install TUI / GUI tools through AppImage."
cp $SOURCEDIR/apps/RustDesk*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/RustDesk*.AppImage
cp $SOURCEDIR/apps/Steam-ROM-Manager*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/Steam-ROM-Manager*.AppImage
cp $SOURCEDIR/apps/balenaEtcher*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/balenaEtcher*.AppImage

echo "Setup EmuDeck for installation."
cp $SOURCEDIR/apps/EmuDeck.desktop /home/deck/Desktop

echo "Install Decky Loader, a plugin manager for Steam Deck."
curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh | sh

echo "Launch Options (Web-Apps): --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://google.com/""
echo "Launch Options (microSD): STEAM_COMPAT_MOUNTS=/run/media/mmcblk0p1 %command%"
echo "Launch Options (???): PROTON_SET_GAME_DRIVE=1 %command%"
echo "Minecraft Mods: Fabric, Sodium, Lithium, Phosphor, and Controllable"
echo "Kodi Skins: https://jurialmunkey.github.io/repository.jurialmunkey/"
echo "Kodi Scrappers: https://tikipeter.github.io/"
echo "Kodi Subtitles: https://a4k-openproject.github.io/a4kSubtitles/packages/"
