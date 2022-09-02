<!---
Author: Argi Pent
Date: August 31, 2022
--->

# Hitchhiker's Guide to the Steam Deck
> [Steam Deck](https://www.steamdeck.com/en/) (released on February 25, 2022) is a handheld gaming computer developed by [Valve](https://www.valvesoftware.com/el/). It is powerd by an **x86-64 APU**, running [SteamOS](https://store.steampowered.com/steamos/download/?ver=steamdeck&snr=) — a [GNU/Linux Arch](https://archlinux.org/) based distribution on a [KDE Plasma](https://kde.org/plasma-desktop/) environment. It is designed to play both native and Windows OS emulated titles via the [Proton](https://github.com/ValveSoftware/Proton) compatibility layer.

## Table of Contents

<!---
## Technical Specifications

| Compute | Information                             |
|:-------:|:---------------------------------------:|
| CPU     | 4 Cores / 8 Threads, 2.4-3.5GHz (Zen 2) |
| GPU     | 8 Compute Units, 1.0-1.6GHz (RDNA 2)    |
| RAM     | 16GB (LPDDR5)                           |

| Storage         | Information                 |
|:---------------:|:---------------------------:|
| SSD (Essential) | 64GB (eMMC PCIe Gen 2 x1)   |
| SSD (Plus)      | 265GB (NVMe PCIe Gen 3 x2)  |
| SSD (Premium)   | 512GB (NVMe PCIe Gen 3 x4)  |
| Expandable      | Yes (microSD, USH-I, A1/A2) |

| Display              | Information     |
|:--------------------:|:---------------:|
| Type                 | LCD IPS         |
| Method               | Optical Bonding |
| Size                 | 7"              |
| Aspect Ratio         | 16:10           |
| Resolution           | 1280 x 800px    |
| Refresh Rate         | 60Hz            |
| Brightness           | 400nits         |
| Touch Sensitive      | Yes             |
| Ambient Light Sensor | Yes             |

| Audio      | Information             |
|:----------:|:------------------------:|
| Speakers   | Yes (Stere)              |
| Microphone | Yes (Dual Array)         |
| DSP        | Yes                      |
| Audio Jack | Yes (3.5mm Combo In/Out) |

| Connectivity | Information                    |
|:------------:|:-------------------------------:|
| Bluetooth    | Yes (5.0)                       |
| Wi-Fi        | Yes (5, 802.11a/b/g/n/ac)       |
| Dual-Band    | Yes (2 x 2 MIMO, 2.4GHz & 5GHz) |

| Battery       | Information            |
|:-------------:|:----------------------:|
| Capacity      | 40Whr                  |
| Input         | Type-C (USB 3.2 Gen 2) |
| Charging Rate | 45W, P.D. 3.0          |

| Dimensions | Information          |
|:----------:|:--------------------:|
| Size       | 298mm x 117mm x 49mm |
| Weight     | 669grams             |

| Controls                     | Information               |
|:----------------------------:|:-------------------------:|
| Directional Pad              | Up, Right, Down, Left     |
| Face Buttons                 | A, B, X, Y                |
| View Button                  | VIEW                      |
| Menu Button                  | MENU                      |
| Left & Right Analog Sticks   | L3, R3 (Capacitive Touch) |
| Left & Right Trackpads       | LT, RT                    |
| Steam Button                 | STEAM                     |
| Quick Access Button          | . . .                     |
| Left & Right Analog Triggers | L1, R1                    |
| Left & Right Bumpers         | L2, R2                    |
| Left & Right Upper Buttons   | L4, R4                    |
| Left & Right Lower Buttons   | L5, R5                    |
| Haptics                      | Yes                       |
| Gyro                         | 6-Axix (IMU)              |
--->

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

## Steam Shortcuts
> The official **Steam Input** button shortcuts.

| No | Combination                  | Information                  |
|:--:|:----------------------------:|:----------------------------:|
| 01 | STEAM + B                    | Force the game to shutdown   |
| 02 | STEAM + X                    | Show the on-screen keyboard  |
| 03 | STEAM + L1                   | Toggle magnifier tool on/off |
| 04 | STEAM + R1                   | Capture screenshot           |
| 05 | STEAM + L2                   | Right mouse click            |
| 06 | STEAM + R2                   | Left mouse click             |
| 07 | STEAM + Right Joystick       | Joystick mouse               |
| 08 | STEAM + Right Trackpad       | As mouse                     |
| 09 | STEAM + Right Trackpad Click | Left mouse click             |
| 10 | STEAM + Left Joystick Up     | Increase screen brightness   |
| 11 | STEAM + Left Joystick Down   | Decrease screen brightness   |
| 12 | STEAM + D-Pad Right          | Enter key                    |
| 13 | STEAM + D-Pad Down           | Tab key                      |
| 14 | STEAM + D-Pad Left           | Escape key                   |

## Terminal CheatSheet
> The unofficial **GNU/Linux Arch-based distribution** terminal cheatsheet.

01. STEAM > Power > **Switch to Desktop**
02. Super > **Konsole**

| No | Command               | Information                                                  |
|:--:|:---------------------:|:------------------------------------------------------------:|
| 01 | sudo pacman -S        | Save (/install) software                                     |
| 02 | sudo pacman -Sy       | Synchronize (/compare) local software to remote repositories |
| 03 | sudo pacman -Su       | Update (/upgrade) installed software                         |
| 04 | sudo pacman -Syu      | (02) + (03)                                                  |
| 05 | sudo pacman -R        | Remove installed software                                    |
| 06 | sudo pacman -Rs       | Remove installed software w/ dependencies                    |
| 07 | sudo pacman -Sc       | Clear pacman cache                                           |
| 08 | sudo pacman -Scc      | Completely clear pacman cache                                |
| 09 | sudo pacman -Rsc      | (06) + (07)                                                  |
| 10 | sudo chmod +x file.sh | Change mode (/permissions) of a script                       |
| 11 | sudo ./file.sh        | Execute script                                               |

## Root User Password
> Any command that alters the system -- even in the merest way -- needs root access. The [sudo](https://man7.org/linux/man-pages/man8/sudo.8.html) prefix allows a permitted user to execute a command as the super-user. For the **Super User DO** command to work though one needs for the administrator to set a password first.

| No | Command     | Information                |
|:--:|:-----------:|:--------------------------:|
| 00 | sudo passwd | Set password for root user |

## Read Only Policy
> Valve ships SteamOS locked so that reporting and reproduction of bugs to be consistent. But, it encourages tech-savvy users to disable the read-only policy and use the operating system behind the steam UI at it's full potential.

| No | Command                       | Information                                 |
|:--:|:-----------------------------:|:-------------------------------------------:|
| 00 | sudo steamos-readonly disable | Disable operating system's read-only policy |

## Package Manager Keyrings
> To install applications, the **PACkage MANager**, which is responsible for these kind of things (see. installing, syncing, updating, and removing every bit of software on the distribution) must be initialized. The following [pacman](https://archlinux.org/pacman/pacman.8.html) commands will make use of the appropirate keyrings to ensure a safe transaction between the locally installed software and the ones saved on the Arch repository servers.

| No | Command                              | Information                                             |
|:--:|:------------------------------------:|:-------------------------------------------------------:|
| 01 | sudo pacman-key --init               | Initialize package manager's keyring process            |
| 02 | sudo pacman-key --pupulate archlinux | Reload the default keys from /usr/share/pacman/keyrings |
| 03 | sudo pacman-key --refresh            | Refresh the keyring process                             |

## Arch User Repository
> There is also a user-maintained repository, containing packaging instructions for every piece of software that has not yet made it into the official repo. To install applications from the [AUR](https://aur.archlinux.org/) users must build them from scratch -- a time consuming process. Thus, the use of a special package manager is mandatory, enter [yay](https://github.com/Jguer/yay).

| No | Command                                          | Information                                                                |
|:--:|:------------------------------------------------:|:--------------------------------------------------------------------------:|
| 01 | sudo pacman -Syu                                 | Synchronize (/compare) local software to remote repositories & update them |
| 02 | sudo pacman -S git                               | Install the git management tool                                            |
| 03 | sudo pacman -S base-devel                        | Install tools needed for source compiling software                         |
| 04 | sudo git clone https://aur.archlinux.org/yay.git | Clone (/download) the YAY repository to a local directory                  |
| 05 | cd yay                                           | Change directory to the "Yet Another Yogurt" folder                        |
| 06 | sudo makepkg -si                                 | Make (/build) the YAY package                                              |
| 07 | sudo yay                                         | (01) + yay -Syu                                                            |

<!---
YOGURT: Yet AnOther User Repository Tool
--->

## Flatpak Permissions
> [Flatpaks](https://flatpak.org/) are sandboxed, disto agnostic applications, contaning all the needed dependacies inside their packaged environment, meaning that it is much harder for them to brake due to a faulty update. That comes at the cost of limited communication out-of-the-box with the opertaing system. [Flatseal](https://flathub.org/apps/details/com.github.tchx84.Flatseal) works like a GUI front-end permissions manager to overcome this problem.

| No | Command                                                     | Information                              |
|:--:|:-----------------------------------------------------------:|:----------------------------------------:|
| 00 | https://flathub.org/apps/details/com.github.tchx84.Flatseal | A GUI tool to manage flatpak permissions |

## Tools & Apps
> Users can install / remove software either though **Discover** (Software Center), or the command line.

### Pacman
| No | Command                           | Information                                                      |
|:--:|:---------------------------------:|:----------------------------------------------------------------:|
| 01 | sudo pacman -S bash-completion    | A TUI tool to autocomplete commands by pressing the "TAB" keycap |
| 02 | sudo pacman -S bpytop             | A TUI tool to monitor system performance                         |
| 03 | sudo pacman -S qbittorrent        | A GUI app to download / upload torrent files                     |
| 04 | sudo pacman -S papirus-icon-theme | A GUI theme for the system icons                                 |
| 05 | sudo pacman -Rsc firefox          | Remove Firefox w/ dependencies & clear pacman cache              |

### Yay
| No | Command             | Information                                                        |
|:--:|:-------------------:|:------------------------------------------------------------------:|
| 01 | yay -S bitwarden    | A GUI app to manage login credentials                              |
| 02 | yay -S megasync-bin | A GUI app to synchronize a MEGA cloud drive with a local directory |
| 03 | yay -S annotator    | A GUI app to anotate images                                        |
| 04 | yay -S discord      | A GUI app to join & chat with communities                          |
| 05 | yay -S spotify      | A GUI app to listen to music                                       |
| 06 | yay -S chiaki       | A GUI app to remote connect to a PS4 / PS5 console                 |

### Flatpak
| No | Command                                                              | Information                                   |
|:--:|:--------------------------------------------------------------------:|:---------------------------------------------:|
| 01 | flatpak install flathub com.google.Chrome                            | A GUI app to browse the internet              |
| 02 | flatpak --user override --filesystem=/run/udev:ro com.google.Chrome  | Access the device events management subsystem |
| 03 | flatpak install flathub com.microsoft.Edge                           | A GUI app to browse the internet              |
| 04 | flatpak --user override --filesystem=/run/udev:ro com.microsoft.Edge | Access the device events management subsystem |

<!--- 
+ Super > Flatseal > Chrome > Filesystem > **/run/udev:ro** (ADD)
+ Super > Flatseal > Edge > Filesystem > **/run/udev:ro** (ADD)
--->

## Web-Apps
> **Web-Apps** are webpages converted into full-screen applications that can then be accessed through the Steam UI.

### ProtonMail
01. Super > Chrome (Right Click) > **Add to Steam**
02. Super > Steam > Chrome (Right Click) > Properties > **ProtonMail**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://proton.me/"

### SteamDB
01. Super > Chrome (Right Click) > **Add to Steam**
02. Super > Steam > Chrome (Right Click) > Properties > **SteamDB**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://steamdb.info/"

### ProtonDB
01. Super > Chrome (Right Click) > **Add to Steam**
02. Super > Steam > Chrome (Right Click) > Properties > **ProtonDB**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.protondb.com/"

### YouTube
01. Super > Chrome (Right Click) > **Add to Steam**
05. Super > Steam > Chrome (Right Click) > Properties > **YouTube**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.youtube.com"

### MapGenie
01. Super > Chrome (Right Click) > **Add to Steam**
05. Super > Steam > Chrome (Right Click) > Properties > **MapGenie**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://mapgenie.io/"

<!---
### xCloud
01. Super > Edge (Right Click) > **Add to Steam**
05. Super > Steam > Edge (Right Click) > Properties > **xCloud**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.xbox.com/en-US/play"

### GeForce Now
01. Super > Edge (Right Click) > **Add to Steam**
05. Super > Steam > Edge (Right Click) > Properties > **GeForce Now**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://play.geforcenow.com/"
--->

## Decky Loader
> [Decky Loader](https://deckbrew.xyz/) is a plugin manager for Steam Deck. Those mods offer means to overclock, control the build-in fun, change CSS themes, and more. Users can install plugins by either downloading (and extracting) them to "/home/homebrew/plugins" of though the [Plugins Store](https://beta.deckbrew.xyz/).

01. **Return to Gaming Mode**
02. STEAM > Settings > System > **Enable Developer Mode** (Toggle)
03. STEAM > Settings > Developer > **CEF Remote Debugging** (Toggle)
04. STEAM > Power > **Switch to Desktop**
05. *(optional)* Super > Chrome > [Plugins Store](https://plugins.deckbrew.xyz/)(OLD)
06. Super > **Konsole**:

| No | Command                                                                                            | Information                  |
|:--:|:--------------------------------------------------------------------------------------------------:|:----------------------------:|
| 00 | curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh \| sh | A GUI tool to manage plagins |

01. **Return to Gaming Mode**
02. . . . > Plugins > **Plugins Store**
03. PowerTools
04. *(optional)* Fantastic
05. *(optional)* MangoHUD
06. *(optional)* [CSSLoader](https://github.com/EMERALD0874/Steam-Deck-Themes)
07. *(optional)* AutoNightMode

## Replay Sorcery
> [Replay Sorcery](https://github.com/matanui159/ReplaySorcery) is a command-line screen capture utility that by default saves the last thirty seconds of gameplay. Users can invoke it by pressing **Ctrl+Super+R**.

| No | Command                                           | Information                                   |
|:--:|:-------------------------------------------------:|:---------------------------------------------:|
| 01 | yay -S replay-sorcery                             | A TUI tool to screen capture while gaming     |
| 02 | sudo systemctl --user enable --now replay-sorcery | Enable the background service through systemd |
| 03 | sudo nano ~/.config/replay-sorcery.conf           | **SEE.**                                      |
| 04 | sudo systemctl --user restart replay-sorcery      | Restart the background service                |

**SEE.**
01. recordSeconds = 60
02. videoInput = hwaccel
03. videoWidth = 1280
04. videoHeight = 800
05. videoFramerate = 24
06. videoEncoder = hevc

## Cloudflare Warp
> [Warp](https://1.1.1.1/) is a command-line connection management tool. It provides access to restricted websites though the use of a VPN, eliminating the need to use proxies, while offering one of the fastest DNS servers on the planet.

| No | Command                                      | Information                                     |
|:--:|:--------------------------------------------:|:-----------------------------------------------:|
| 01 | yay -S cloudflare-warp-bin                   | A TUI tool that acts as a DNS+VPN server        |
| 02 | sudo systemctl enable --now warp-svc.service | Enable the background service through systemd   |
| 03 | warp-cli register                            | Register the instance                           |
| 04 | warp-cli set-mode warp                       | Set the type of connection to just DNS **SEE.** |
| 05 | warp-cli connect                             | Connect to the Cloudflare server **SEE.**       |

**SEE.**
01. *(optional)* Set the type of connection to DNS+VPN: **warp-cli set mode warp+doh**
02. Disconnect from the Cloudflare server: **warp-cli disconnect**

## Neofetch
> [Neofetch](https://github.com/dylanaraps/neofetch) is a command-line system information tool written in [Bash](https://www.gnu.org/software/bash/).

| No | Command                 | Information   |
|:--:|:-----------------------:|:-------------:|
| 01 | sudo pacman -S neofetch | A TUI tool to display system information |
| 02 | nano ~/.bashrc          | **SEE.** |
| 03 | source ~/.bashrc        | Refresh the bash unix shell values |

**SEE.**
00. Add **neofetch** to the last line of the document

## Non-Steam Games
> The following steps and commands will enable the installation of games from third party stores / launchers ([Epic Games](https://store.epicgames.com/en-US/) & [GOG](https://www.gog.com/)), either to the internal SSD or the microSD card.

01. **Return to Gaming Mode**
02. STEAM > Settings > System: **Format SD Card**
03. STEAM > Power > **Return to Desktop**
04. Super > **Konsole**

| No | Command                                                                       | Information                                                                     |
|:--:|:-----------------------------------------------------------------------------:|:-------------------------------------------------------------------------------:|
| 01 | flatpak install flathub net.davidotek.pupgui2                                 | A GUI tool to magage community maintained versions of proton by GloriousEggroll |
| 03 | flatpak --user override --filesystem=/run/udev:ro net.davidotek.pupgui2       | Access the device events management subsystem                                   |
| 03 | flatpak install flathub com.heroicgameslauncher.hgl                           | A GUI tool to connect to the **Epic Games** and **GOG** launchers on GNU/Linux  |
| 04 | flatpak --user override --filesystem=/run/udev:ro com.heroicgameslauncher.hgl | Access the device events management subsystem                                   |
| 05 | sudo chown deck:deck -R /run/media/mmcblk0p1/                                 | Change ownership of the microSD card to the default deck user                   |
| 06 | flatpak install flathub io.github.philipk.boilr                               | A GUI tool to import non-steam games to the Steam library                       |
| 07 | flatpak --user override --filesystem=/run/udev:ro io.github.philipk.boilr     | Access the device events management subsystem                                   |

01. Super > HeroicGamesLauncher (Right Click) > **Add to Steam**
02. Super > Steam > HeroicGamesLauncher (Right Click) > Properties > Launch Options > **STEAM_COMPAT_MOUNTS=/run/media/mmcblk0p1 %command%**

## Emulated Games
> [EMUDECK](https://www.emudeck.com/) is an automated installtion script that sets up every available emulator for the Steam Deck. It integrades to the Steam Library, it respects the 16:10 aspect ratio and makes use of Steam Input per game.

01. Super > Chrome > [Download](https://www.emudeck.com/EmuDeck.desktop) (Save to: Desktop)
02. **EmuDeck.desktop** (Double Click)
03. ... > [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager/releases/tag/v2.3.40)
04. **Steam-ROM-Manager.AppImage** (Double Click)

## Kodi
> .

| Command             | Information   |
|:-------------------:|:-------------:|
| sudo pacman -S kodi | |

## Color Calibration
> .

| No | Command                   | Information                                       |
|:--:|:-------------------------:|:-------------------------------------------------:|
| 01 | sudo pacman -S displaycal | A GUI tool used for color calibration             |
| 02 | sudo pacman -S argyllcms  | A TUI tool containing drivers for colormeteres    |
| 03 | yay -S steamtinkerlaunch  | A GUI tool used to configure Linux & Proton games |

01. [ArgyllCMS Binaries](https://www.argyllcms.com/downloadlinux.html)
02. Super > **DisplayCal**

## Microsoft Windows
> .

+ https://github.com/media-a-server/Steam-Deck-Driver-Guide
