# Hitchhiker's Guide to the Steam Deck

> The **[Steam Deck](https://www.steamdeck.com/en/)** (released on February 25, 2022) is a handheld gaming computer developed by **Valve**. It is powerd by AMD's RDNA 2 architecture, running **SteamOS** (a GNU/Linux Arch based disibutrion) designed to play both native and Windows emulated titles via the **Proton** compatibility layer, with the use of **FSR**.

<!---
## Technical Specifications

| Compute           | Information                              |
|:------------------:|:---------------------------------------:|
| CPU                | Zen 2 (4 Cores / 8 Threads, 2.4-3.5GHz) |
| GPU                | RDNA 2 (8 Compute Units, 1.0-1.6GHz)    |
| RAM                | 16GB LPDDR5                             |
| SSD (Essential)    | 64GB eMMC (PCIe Gen 2 x1)               |
| SSD (Plus)         | 265GB NVMe (PCIe Gen 3 x2)              |
| SSD (Premium)      | 512GB NVMe (PCIe Gen 3 x4)              |

| Display            | Information                             |
|:------------------:|:---------------------------------------:|
| Type               | LCD IPS (Optical Bonding)               |
| Size               | 7"                                      |
| Aspect Ratio       | 16:10                                   |
| Resolution         | 1280 x 800px                            |
| Refresh Rate       | 60Hz                                    |
| Brightness         | 400nits                                 |
| Touch Sensitive    | Yes                                     |
| Sensor             | Ambient Light                           |

| Audio              | Information                             |
|:------------------:|:---------------------------------------:|
| Speakers           | Stere                                   |
| DSP                | Embedded                                |
| Microphone         | Dual Array                              |
| Audio Jack         | 3.5mm Combo                             |

| Connectivity       | Information                             |
|:------------------:|:---------------------------------------:|
| Bluetooth          | 5.0                                     |
| Wi-Fi              | 5 (802.11a/b/g/n/ac)                    |
| Dual-Band          | 2 x 2 MIMO (2.4GHz & 5GHz)              |

| Expandable Storage | Information                             |
|:------------------:|:---------------------------------------:|
| Type               | microSD                                 |
| Protocol           | UHS-I (A2)                              |

| Battery            | Information                             |
|:------------------:|:---------------------------------------:|
| Input              | USB 3.2 Gen 2, Type-C (45W, P.D. 3.0)   |
| Battery            | 40Whr                                   |

| Dimensions         | Information                             |
|:------------------:|:---------------------------------------:|
| Size               | 298mm x 117mm x 49mm                    |
| Weight             | 669grams                                |

| Controls                     | Information                  |
|:----------------------------:|:----------------------------:|
| Directional Pad              | Up, Right, Down, Left        |
| Face Buttons                 | A, B, X, Y                   |
| View Button                  |                              |
| Menu Button                  |                              |
| Left & Right Analog Sticks   | L3, R3 (w/ Capacitive Touch) |
| Left & Right Trackpads       |                              |
| Steam Button                 |                              |
| Access Button                |                              |
| Left & Right Analog Triggers | L1, R1                       |
| Left & Right Bumpers         | L2, R2                       |
| Left & Right Upper Buttons   | L4, R4                       |
| Left & Right Lower Buttons   | L5, R5                       |
| Haptics                      | Yes                          |
| Gyro                         | 6-Axis IMU                   |
--->

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

## CheatSheet
| Information                                                           | Command               |
|:---------------------------------------------------------------------:|:---------------------:|
| Save (as to install) new software                                     | sudo pacman -S        |
| Synchronize system repositories                                       | sudo pacman -Sy       |
| Update system software                                                | sudo pacman -Su       |
| Synchronize system repositories and update system software            | sudo pacman -Syu      |
| Remove installed software                                             | sudo pacman -R        |
| Remove installed software w/ it’s dependencies                        | sudo pacman -Rs       |
| Clear system cache                                                    | sudo pacman -Sc       |
| Completely clear system cache                                         | sudo pacman -Scc      |
| Remove installed software w/ it’s dependencies and clear system cache | sudo pacman -Rsc      |
| Change mode of a script                                               | sudo chmod +x file.sh |
| Execute script                                                        | sudo ./file.sh        |

## Glossary

## Developer Mode
+ System Settings: Enable Developer Mode
+ Developer: CEF Remote Debugging
+ Steam (Button) > Power > Switch to Desktop

## Admin Password
| Command                       | Information |
|:-----------------------------:|:-----------:|
| sudo passwd                   | |

## SteamOS Policy
| Command                       | Information |
|:-----------------------------:|:-----------:|
| sudo steamos-readonly disable | |

## Package Manager Keyring
| Command                              | Information |
|:------------------------------------:|:-----------:|
| sudo pacman-key --init               | |
| sudo pacman-key --pupulate archlinux | |
| sudo pacman-key --refresh            | |

## Arch User Repository
| Command                                          | Information |
|:------------------------------------------------:|:-----------:|
| sudo pacman -S git                               | |
| sudo pacman -S base-devel                        | |
| sudo git clone https://aur.archlinux.org/yay.git | |
| cd yay                                           | |
| sudo makepkg -si                                 | |

## Tools & Apps
| Command                             | Information |
|:-----------------------------------:|:-----------:|
| sudo pacman -S bash-completion      | |
| sudo pacman -S firefox              | |
| sudo pacman -S qbittorrent          | |
| sudo pacman -S inkscape             | |
| sudo pacman -S audacity             | |
| sudo yay -S bitwarden               | |
| sudo yay -S megasync-bin            | |
| sudo yay -S discord                 | |
| sudo yay -S spotify                 | |
| sudo yay -S chiaki                  | |
| sudo yay -S obs-studio              | |
| sudo yay -S google-chrome-beta      | |
| sudo yay -S microsoft-edge-beta-bin | |

## WebSite Shortcuts
+ **DSCVR**: Flatseal
Fileystem: /run/udev:ro
LAUNCH OPTIONS: --window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk "https://www.google.com"

## Decky Loader
+ curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh | sh

## Replay Sorcery
| Command                    | Information |
|:--------------------------:|:-----------:|
| sudo yay -S replay-sorcery | |

## CloudFlare Warp
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
| Command            | Information   |
|:------------------:|:-------------:|
| pacman -S neofetch | |
| nano ~/.bashrc     | ADD: neofetch |
| source ~/.bashrc   | |

## Non-Steam Games
| Command                        | Information   |
|:------------------------------:|:-------------:|
| sudo yay -S steamtinkerlaunch  | |

+ **DSCVR**: ProtonUp (ProtonGE for Steam, WineGE for Lutrix, and Luxtropedia for GOG)
+ **DSCVR**: Lutris
+ **DSCVR**: HeroicGamesLauncher

> STEAM_COMPAT_MOUNTS=/run/media/mmcblk0p1 %command%

## Emulated Games
+ [EMUDECK](https://www.emudeck.com/EmuDeck.desktop)
+ [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager/releases/tag/v2.3.40)
+ [BoilR](https://github.com/PhilipK/BoilR)
+ [GameHub](https://github.com/tkashkin/GameHub)

## Kodi
| Command             | Information   |
|:-------------------:|:-------------:|
| sudo pacman -S kodi | |

## Windows 11
+ https://github.com/media-a-server/Steam-Deck-Driver-Guide
