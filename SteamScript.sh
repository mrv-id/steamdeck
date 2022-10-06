#!/bin/bash
# ver. 0.1

SOURCEDIR=/home/deck/Downloads/SteamScript/

echo "Set a password for the default SteamOS suser."
passwd

echo "Disable the read-only SteamOS policy."
sudo steamos-readonly disable

echo "Expand the SWAP size."
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

#echo "Fix the broken Discover Store."
#sudo pacman -S packagekit-qt5
#sudo pacman -S flatpak
#sudo pacman -S fwupd

echo "Install the absolutely necessary tools w/ Pacman."
#yay -S nano
#yay -S bash-completion
yay -S bpytop
yay -S cpu-x
yay -S peazip-qt-bin
yay -S gparted
yay -S exfatprogs
yay -S ntfs-3g
yay -S papirus-icon-theme
echo "Install Neofetch, a TUI system information utility."
sudo pamcan -S neofetch
mkdir /home/deck/Pictures/.neofetch
cp $SOURCEDIR/logo/SteamDeck.jpg /home/deck/Pictures/.neofetch
sudo echo "neofetch --jp2a /home/deck/Pictures/.neofetch/SteamDeck.jpg" >> ~/.bashrc
source ~/.bashrc

echo "Install the absolutely necessary tools w/ Flathub."
flatpak install flathub com.github.tchx84.Flatseal
flatpak --user override --filesystem=/run/udev:ro com.github.tchx84.Flatseal
echo "Launch Options for Web-Apps: --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://google.com/""
flatpak install flathub com.google.Chrome
flatpak --user override --filesystem=/run/udev:ro com.google.Chrome
flatpak install flathub nz.mega.MEGAsync
flatpak --user override --filesystem=/run/udev:ro nz.mega.MEGAsync
flatpak install flathub org.x.Warpinator
flatpak --user override --filesystem=/run/udev:ro org.x.Warpinator
flatpak install flathub org.qbittorrent.qBittorrent
flatpak --user override --filesystem=/run/udev:ro org.qbittorrent.qBittorrent
echo "REPO (SKIN): https://jurialmunkey.github.io/repository.jurialmunkey/"
echo "REPO (REAL): https://tikipeter.github.io/"
echo "REPO (SUBS): https://a4k-openproject.github.io/a4kSubtitles/packages/"
flatpak install flathub tv.kodi.Kodi
flatpak --user override --filesystem=/run/udev:ro tv.kodi.Kodi
flatpak install flathub com.bitwarden.desktop
flatpak --user override --filesystem=/run/udev:ro flathub com.bitwarden.desktop
flatpak install flathub com.discordapp.Discord
flatpak --user override --filesystem=/run/udev:ro com.discordapp.Discord
flatpak install flathub com.github.KRTirtho.Spotube
flatpak --user override --filesystem=/run/udev:ro com.github.KRTirtho.Spotube
flatpak install flathub io.posidon.Paper
flatpak --user override --filesystem=/run/udev:ro io.posidon.Paper
flatpak install flathub org.libreoffice.LibreOffice
flatpak --user override --filesystem=/run/udev:ro org.libreoffice.LibreOffice
flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak --user override --filesystem=/run/udev:ro org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak install flathub io.github.giantpinkrobots.bootqt
flatpak --user override --filesystem=/run/udev:ro io.github.giantpinkrobots.bootqt
flatpak install flathub com.steamgriddb.steam-rom-manager
flatpak --user override --filesystem=/run/udev:ro com.steamgriddb.steam-rom-manager
flatpak install flathub com.steamgriddb.SGDBoop
flatpak --user override --filesystem=/run/udev:ro com.steamgriddb.SGDBoop
echo "Install ProtonUp-Qt, a user-maintained version of Proton."
flatpak install flathub net.davidotek.pupgui2
flatpak --user override --filesystem=/run/udev:ro net.davidotek.pupgui2
flatpak install flathub com.github.Matoking.protontricks
flatpak --user override --filesystem=/run/udev:ro com.github.Matoking.protontricks
flatpak install com.valvesoftware.Steam.Utility.steamtinkerlaunch
flatpak --user override --filesystem=/run/udev:ro com.valvesoftware.Steam.Utility.steamtinkerlaunch
flatpak install flathub net.displaycal.DisplayCAL net.displaycal.DisplayCAL
flatpak --user override --filesystem=/run/udev:ro
echo "Install Crankshaft, a SteamOS plugin manager."
flatpak install flathub space.crankshaft.Crankshaft
flatpak --user override --filesystem=/run/udev:ro space.crankshaft.Crankshaft
echo "Install DeckyLoader, a SteamDeck plugin manager."
curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh | sh
echo "Launch Options for microSD installs: STEAM_COMPAT_MOUNTS=/run/media/mmcblk0p1 %command%"
echo "Launch Options for 3nd-party installs: PROTON_SET_GAME_DRIVE=1 %command%"
echo "Setup EmuDeck for installation."
cp $SOURCEDIR/apps/EmuDeck.desktop /home/deck/Desktop

echo "Install the absolutely necessary tools w/ AppImage."
cp $SOURCEDIR/apps/RustDesk*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/RustDesk*.AppImage
cp $SOURCEDIR/apps/Steam-ROM-Manager*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/Steam-ROM-Manager*.AppImage
cp $SOURCEDIR/apps/balenaEtcher*.AppImage /home/deck/Desktop
chmod +x /home/deck/Desktop/balenaEtcher*.AppImage

#echo "Install the absolutely necessary tools w/ AUR."
#echo "Install YAY (abbr. Yet Another Yogurt), a TUI AUR helper."
#sudo pacman -S git
#sudo pacman -S base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#yay
#echo "Install Octopi, a GUI AUR store."
#yay -S octopi
#echo "Install Replay Sorcery, a video capture utility (Ctrl+Super+R)."
#yay -S replay-sorcery-git
#sudo systemctl --user enable --now replay-sorcery
#sudo systemctl enable --now replay-sorcery-kms
#sudo rm ~/.config/replay-sorcery.conf
#sudo cp $SOURCEDIR/replay-sorcery.conf ~/.config/replay-sorcery.conf
#sudo systemctl --user restart replay-sorcery
#echo "Install vkBasalt, a Vulkan alternative to ReShade."
#yay -S vkbasalt
#echo "Install GOverlay, a MangoHUD, vkBasalt, and ReplaySorcery utility."
#yay -S goverlay-bin
