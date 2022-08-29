# Hitchhiker's Guide to the Steam Deck

![logo](https://github.com/mrv-id/steamdeck/blob/main/logo.png)

> The **[Steam Deck](https://www.steamdeck.com/en/)** (released on February 25, 2022) is a handheld gaming computer developed by **Valve**. It is powerd by AMD's RDNA 2 architecture, running **SteamOS** (a GNU/Linux Arch based disibutrion) designed to play both native and Windows emulated titles via the **Proton** compatibility layer.

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

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

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

## CheatSheet

> **Steam Button**, **Power**, and **Switch to Desktop**.

| Information                                                           | Command          |
|:---------------------------------------------------------------------:|:----------------:|
| Save (as to install) new software                                     | pacman -S        |
| Synchronize system repositories                                       | pacman -Sy       |
| Update system software                                                | pacman -Su       |
| Synchronize system repositories and update system software            | pacman -Syu      |
| Remove installed software                                             | pacman -R        |
| Remove installed software w/ it’s dependencies                        | pacman -Rs       |
| Clear system cache                                                    | pacman -Sc       |
| Completely clear system cache                                         | pacman -Scc      |
| Remove installed software w/ it’s dependencies and clear system cache | pacman -Rsc      |
| Change mode of a script                                               | chmod +x file.sh |
| Execute script                                                        | ./file.sh        |

## Tools & Apps
Install basic software.

| Command                   | Information |
|:-------------------------:|:-----------:|
| pacman -S bash-completion | |
| pacman -S firefox         | |
| pacman -S qbittorrent     | |
| pacman -S kodi            | |

## Neofetch
Install and enable neofetch on terminal.

| Command            | Information   |
|:------------------:|:-------------:|
| pacman -S neofetch | |
| nano ~/.bashrc     | ADD: neofetch |
| source ~/.bashrc   | |

## AUR
Install and enable Arch User Repository.

| Command                                     | Information   |
|:-------------------------------------------:|:-------------:|
| pacman -S git                               | |
| pacman -S base-devel                        |
| git clone https://aur.archlinux.org/yay.git |
| cd yay                                      |
| makepkg -si                                 |
