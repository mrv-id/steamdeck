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

| Controls                     | Information                  |
|:----------------------------:|:----------------------------:|
| Directional Pad              | Up, Right, Down, Left        |
| Face Buttons                 | A, B, X, Y                   |
| View Button                  | VIEW                         |
| Menu Button                  | MENU                         |
| Left & Right Analog Sticks   | L3, R3 (Capacitive Touch)    |
| Left & Right Trackpads       | LT, RT                       |
| Steam Button                 | STEAM                        |
| Quick Access Button          | ACCESS                       |
| Left & Right Analog Triggers | L1, R1                       |
| Left & Right Bumpers         | L2, R2                       |
| Left & Right Upper Buttons   | L4, R4                       |
| Left & Right Lower Buttons   | L5, R5                       |
| Haptics                      | Yes                          |
| Gyro                         | 6-Axix (IMU)                 |
--->

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

## Steam Shortcuts
> The official **Steam Input** button shortcuts.

| No | Combination                  | Information                  |
|:--:|:----------------------------:|:----------------------------:|
| 01 | STEAM + B                    | Force the game to shutdown   |
| 01 | STEAM + X                    | Show the on-screen keyboard  |
| 01 | STEAM + L1                   | Toggle magnifier tool on/off |
| 01 | STEAM + R1                   | Capture screenshot           |
| 01 | STEAM + L2                   | Right mouse click            |
| 01 | STEAM + R2                   | Left mouse click             |
| 01 | STEAM + Right Joystick       | Joystick mouse               |
| 01 | STEAM + Right Trackpad       | As mouse                     |
| 01 | STEAM + Right Trackpad Click | Left mouse click             |
| 01 | STEAM + Left Joystick Up     | Increase screen brightness   |
| 01 | STEAM + Left Joystick Down   | Decrease screen brightness   |
| 01 | STEAM + D-Pad Right          | Enter key                    |
| 01 | STEAM + D-Pad Down           | Tab key                      |
| 01 | STEAM + D-Pad Left           | Escape key                   |

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
> Any command that alters the system — even in the merest way — needs root access. The [sudo](https://man7.org/linux/man-pages/man8/sudo.8.html) prefix allows a permitted user to execute a command as the super-user. For the **Super User DO** command to work though one needs for the administrator to set a password first.

| No | Command                       | Information                 |
|:--:|:-----------------------------:|:---------------------------:|
| 00 | sudo passwd                   | Set password for root user  |

## Ready Only Policy
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
> There is also a user-maintained repository, containing packaging instructions for every piece of software that has not yet made it into the official repo. To install applications from the [AUR](https://aur.archlinux.org/) users must build them from scratch — a time consuming process. Thus, the use of a special package manager is mandatory, enter [yay](https://github.com/Jguer/yay).

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
> [Flatpaks](https://flatpak.org/) are sandboxed, disto agnostic applications, contaning all the needed dependacies inside their packaged environment, meaning that it is much harder for them to brake due to a faulty updates. That comes at the cost of not communicating out-of-the-box with the opertaing system and the rest of the apps. To overcome this problem, [Flatseal](https://flathub.org/apps/details/com.github.tchx84.Flatseal) works like a GUI front-end permissions manager.

| No | Command                                                     | Information                              |
|:--:|:-----------------------------------------------------------:|:----------------------------------------:|
| 00 | https://flathub.org/apps/details/com.github.tchx84.Flatseal | A GUI tool to manage flatpak permissions |

## Tools & Apps
> Users can install / remove software either though **Discover** (Software Center), or the command line.

### Pacman

#### Install
| No | Command                             | Information                                                        |
|:--:|:-----------------------------------:|:------------------------------------------------------------------:|
| 01 | sudo pacman -S bash-completion      | A TUI tool to autocomplete commands by pressing the "TAB" keycap   |
| 02 | sudo pacman -S bpytop               | A TUI tool to monitor system performance                           |
| 03 | sudo pacman -S qbittorrent          | A GUI app to download / upload torrent files                       |
| 04 | sudo pacman -S papirus-icon-theme   | A GUI theme for the system icons                                   |

#### Remove
| No | Command                             | Information                                                        |
|:--:|:-----------------------------------:|:------------------------------------------------------------------:|
| 00 | sudo pacman -Rsc firefox            | Remove Firefox w/ dependencies & clear pacman cache                |

### Yay
| No | Command                             | Information                                                        |
|:--:|:-----------------------------------:|:------------------------------------------------------------------:|
| 01 | sudo yay -S bitwarden               | A GUI app to manage login credentials                              |
| 02 | sudo yay -S megasync-bin            | A GUI app to synchronize a MEGA cloud drive with a local directory |
| 03 | sudo yay -S annotator               | A GUI app to anotate images                                        |
| 04 | sudo yay -S discord                 | A GUI app to join & chat with communities                          |
| 05 | sudo yay -S spotify                 | A GUI app to listen to music                                       |
| 06 | sudo yay -S chiaki                  | A GUI app to remote connect to a PS4 / PS5 console                 |

### Flatpak

#### Install
| No | Command                                             | Information                                              |
|:--:|:---------------------------------------------------:|:--------------------------------------------------------:|
| 01 | flatpak install flathub com.google.Chrome           | A GUI app to browse the internet                         |
| 02 | flatpak install flathub com.microsoft.Edge          | A GUI app to browse the internet                         |
| 03 | flatpak install flathub com.github.KRTirtho.Spotube | A GUI app to listen to Spofity & YouTube music w/out ads |

#### Permissionss
| No | Command                                                                       | Information                                   |
|:--:|:-----------------------------------------------------------------------------:|:---------------------------------------------:|
| 01 | flatpak --user override --filesystem=/run/udev:ro com.google.Chrome           | Access the device events management subsystem |
| 01 | flatpak --user override --filesystem=/run/udev:ro com.microsoft.Edge          | Access the device events management subsystem |
| 01 | flatpak --user override --filesystem=/run/udev:ro com.github.KRTirtho.Spotube | Access the device events management subsystem |

<!--- 
+ Super > Flatseal > Chrome > Filesystem > **/run/udev:ro** (ADD)
+ Super > Flatseal > Edge > Filesystem > **/run/udev:ro** (ADD)
+ Super > Flatseal > Spottube > Filesystem > **/run/udev:ro** (ADD)
--->

## Web-Apps
> **Web-Apps** are web-pages converted into full-screen applications that can then be accessed through the Steam UI.

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
> .

01. Steam (Button) > Settings > System > **Enable Developer Mode** (Toggle)
02. Steam (Button) > Settings > Developer > **CEF Remote Debugging** (Toggle)
03. Steam (Button) > Power > **Switch to Desktop**
04. Super > **Konsole**:

| Νο | Command                                                                                            | Information                                     |
|:--:|:--------------------------------------------------------------------------------------------------:|:-----------------------------------------------:|
| 00 | curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh | sh | Automated install script for the plugin manager |

## Replay Sorcery
> .

| No | Command                                           | Information                                   |
|:--:|:-------------------------------------------------:|:---------------------------------------------:|
| 01 | sudo yay -S replay-sorcery                        | A TUI tool to screen capture while gaming     |
| 02 | sudo systemctl --user enable --now replay-sorcery | Enable the background service through systemd |
| 03 | sudo nano ~/.config/replay-sorcery.conf           | **SEE.**                                      |
| 04 | sudo systemctl --user restart replay-sorcery      | Restart the background service                |
| 05 | Ctrl+Super+R                                      | Screen capture the last seconds of gameplay   |

**SEE.**
+ recordSeconds = 60
+ videoInput = hwaccel
+ videoWidth = 1280
+ videoHeight = 800
+ videoFramerate = 24
+ videoEncoder = hevc

## CloudFlare Warp
> .

| Command                                      | Information |
|:--------------------------------------------:|:-----------:|
| sudo yay -S cloudflare-warp-bin              | |
| sudo systemctl enable --now warp-svc.service | |
| warp-cli register                            | |
| warp-cli connect                             | |
| warp-cli disconnect                          | |
| warp-cli set-mode warp                       | |
| warp-cli set mode warp+doh                   | |

## Neofetch
> .

| Command            | Information   |
|:------------------:|:-------------:|
| pacman -S neofetch | |
| nano ~/.bashrc     | ADD: neofetch |
| source ~/.bashrc   | |

## Non-Steam Games
> .

| Command                        | Information   |
|:------------------------------:|:-------------:|
| sudo yay -S steamtinkerlaunch  | |

+ **DSCVR**: ProtonUp (ProtonGE for Steam, WineGE for Lutrix, and Luxtropedia for GOG)
+ **DSCVR**: Lutris
+ **DSCVR**: HeroicGamesLauncher

> STEAM_COMPAT_MOUNTS=/run/media/mmcblk0p1 %command%

## Emulated Games
> .

+ Steam (Button) > Settings > System: Format SD Card
+ [EMUDECK](https://www.emudeck.com/EmuDeck.desktop)
+ [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager/releases/tag/v2.3.40)
+ [BoilR](https://github.com/PhilipK/BoilR)
+ [GameHub](https://github.com/tkashkin/GameHub)

## Kodi
> .

| Command             | Information   |
|:-------------------:|:-------------:|
| sudo pacman -S kodi | |

## Windows 11
> .

+ https://github.com/media-a-server/Steam-Deck-Driver-Guide
