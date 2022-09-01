<!---
Author: Argi Pent
Date: August 31, 2022
--->
# Hitchhiker's Guide to the Steam Deck
> [Steam Deck](https://www.steamdeck.com/en/) (released on February 25, 2022) is a handheld gaming computer developed by [Valve](https://www.valvesoftware.com/el/). It is powerd by an **x86-64 APU**, running [SteamOS](https://store.steampowered.com/steamos/download/?ver=steamdeck&snr=) — a [GNU/Linux Arch](https://archlinux.org/) based distribution on [KDE Plasma](https://kde.org/plasma-desktop/). It is designed to play both native and Windows OS emulated titles via the [Proton](https://github.com/ValveSoftware/Proton) compatibility layer.

## Table of Contents

<!--- ## Technical Specifications

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
| Gyro                         | 6-Axix (IMU)                 | --->

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

## Shortcuts
> .
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

## CheatSheet
> .
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

## Admin Password
> .
| No | Command                       | Information                 |
|:--:|:-----------------------------:|:---------------------------:|
| 00 | sudo passwd                   | Set password for super-user |

## SteamOS Policy
> .
| No | Command                       | Information                                 |
|:--:|:-----------------------------:|:-------------------------------------------:|
| 00 | sudo steamos-readonly disable | Disable operating system's read-only policy |

## Package Manager Keyring
> .
| No | Command                              | Information                                             |
|:--:|:------------------------------------:|:-------------------------------------------------------:|
| 01 | sudo pacman-key --init               | Initialize package manager's keyring process            |
| 02 | sudo pacman-key --pupulate archlinux | Reload the default keys from /usr/share/pacman/keyrings |
| 03 | sudo pacman-key --refresh            | Refresh the keyring process                             |

## Arch User Repository
> .
| No | Command                                          | Information                                                                |
|:--:|:------------------------------------------------:|:--------------------------------------------------------------------------:|
| 01 | sudo pacman -Syu                                 | Synchronize (/compare) local software to remote repositories & update them |
| 02 | sudo pacman -S git                               | Install the git management tool                                            |
| 03 | sudo pacman -S base-devel                        | Install tools needed for source compiling software                         |
| 04 | sudo git clone https://aur.archlinux.org/yay.git | Clone (/download) the YAY repository to a local directory                  |
| 05 | cd yay                                           | Change directory to the "Yet Another Yogurt" folder                        |
| 06 | sudo makepkg -si                                 | Make (/build) the YAY package                                              |
| 07 | sudo yay                                         | (01) + yay -Syu                                                            |

<!--- YOGURT: Yet AnOther User Repository Tool --->

## Tools & Apps
> .
| No | Command                             | Information                                                        |
|:--:|:-----------------------------------:|:------------------------------------------------------------------:|
| 01 | sudo pacman -S bash-completion      | A TUI tool to autocomplete commands by pressing the "TAB" keycap   |
| 03 | sudo pacman -S qbittorrent          | A GUI app to download / upload torrent files                       |
| 04 | sudo yay -S bitwarden               | A GUI app to manage login credentials                              |
| 05 | sudo yay -S megasync-bin            | A GUI app to synchronize a MEGA cloud drive with a local directory |
| 06 | sudo yay -S annotator               | A GUI app to anotate images                                        |
| 07 | sudo yay -S discord                 | A GUI app to join & chat with communities                          |
| 08 | sudo yay -S spotify                 | A GUI app to listen to music                                       |
| 09 | sudo yay -S chiaki                  | A GUI app to remote connect to a PS4 / PS5 console                 |
| 10 | sudo pacman -Rsc firefox            | Remove Firefox w/ dependencies & clear pacman cache                |

<!--- GNU/Linux > Dolphin > Downloads > qBitTorrent > .temp --->

## WebSite Shortcuts
> .
01. GNU/Linux > Discover (Store) > **Flatseal** (Install)
02. GNU/Linux > Discover (Store) > **Chrome** (Install)
03. GNU/Linux > Flatseal > Chrome > Filesystem > **/run/udev:ro** (ADD)

### ProtonMail
01. GNU/Linux > Chrome (Right Click) > **Add to Steam**
02. GNU/Linux > Steam > Chrome (Right Click) > Properties > **ProtonMail**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://proton.me/"

### SteamDB
01. GNU/Linux > Chrome (Right Click) > **Add to Steam**
02. GNU/Linux > Steam > Chrome (Right Click) > Properties > **SteamDB**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://steamdb.info/"

### ProtonDB
01. GNU/Linux > Chrome (Right Click) > **Add to Steam**
02. GNU/Linux > Steam > Chrome (Right Click) > Properties > **ProtonDB**
03. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.protondb.com/"

### YouTube
01. GNU/Linux > Chrome (Right Click) > **Add to Steam**
05. GNU/Linux > Steam > Chrome (Right Click) > Properties > **YouTube**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.youtube.com"

### Twitch
01. GNU/Linux > Chrome (Right Click) > **Add to Steam**
05. GNU/Linux > Steam > Chrome (Right Click) > Properties > **Twitch**
06. ... > Launch Options > --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.twitch.tv/"

<!--- [Assets Dimensions](https://partner.steamgames.com/doc/store/assets/standard) --->

## Decky Loader
> .
01. Steam (Button) > Settings > System > **Enable Developer Mode** (Toggle)
02. Steam (Button) > Settings > Developer > **CEF Remote Debugging** (Toggle)
03. Steam (Button) > Power > **Switch to Desktop**
04. GNU/Linux > **Konsole**:

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

**SEE.**
+ recordSeconds = 60
+ videoInput = hwaccel
+ videoWidth = 1280
+ videoHeight = 800
+ videoFramerate = 24
+ videoEncoder = hevc

+ Use "Ctrl+Super+R" as a combo command on Steam Input to capture video.

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
