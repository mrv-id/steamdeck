# Hitchhiker's Guide to the Steam Deck

![logo](https://github.com/mrv-id/steamdeck/blob/main/logo.png)

> The **[Steam Deck](https://www.steamdeck.com/en/)** (released on February 25, 2022) is a handheld gaming computer developed by **Valve**. It is powerd by AMD's RDNA 2 architecture, running **SteamOS** (a GNU/Linux Arch based disibutrion) designed to play both native and Windows emulated titles via the **Proton** compatibility layer.

## Technical Specifications

| Compute           | Information                             |
|:------------------:|:---------------------------------------:|
| CPU                | Zen 2 (4 Cores / 8 Threads, 2.4-3.5GHz) |
| GPU                | RDNA 2 (8 Compute Units, 1.0-1.6GHz)    |
| RAM                | 16GB LPDDR5                             |
| SSD (Essential)    | 64GB eMMC (PCIe Gen 2 x1)               |
| SSD (Plus)         | 265GB NVMe (PCIe Gen 3 x2)              |
| SSD (Premium)      | 512GB NVMe (PCIe Gen 3 x4)              |

| Display            | Information                             |
|:------------------:|:---------------------------------------:|
| Display            | LCD                                     |
| Display Type       | IPS (Optical Bonding)                   |
| Size               | 7"                                      |
| Aspect Ratio       | 16:10                                   |
| Resolution         | 1280 x 800px                            |
| Refresh Rate       | 60Hz                                    |
| Brightness         | 400nits                                 |
| Touch Sensitive    | Yes (10-Point)                          |
| Sensor             | Ambient Light                           |

| Audio              | Information                             |
|:------------------:|:---------------------------------------:|
| Speakers           | Stereo (? Watt)                         |
| DSP                | Embedded                                |
| Microphone         | Dual Array                              |
| Audio Jack         | 3.5mm Combo                             |

| Connectivity       | Information                             |
|:------------------:|:---------------------------------------:|
| Bluetooth          | 5.0                                     |
| Wi-Fi              | 5 (802.11a/b/g/n/ac)                    |
| Dual-Band          | 2 x 2 MIMO (2.4GHz & 5GHz)              |

| Battery            | Information                             |
|:------------------:|:---------------------------------------:|
| Input              | USB 3.2 Gen 2, Type-C (45W, P.D. 3.0)   |
| Battery            | 40Whr                                   |

| Expandable Storage | Information                             |
|:------------------:|:---------------------------------------:|
| Type               | microSD                                 |
| Protocol           | UHS-I (A2)                              |

| Hardware           | Information                             |
|:------------------:|:---------------------------------------:|
| Dimensions         | 298mm x 117mm x 49mm                    |
| Weight             | 669grams                                |

### Controls
+ Directional Pad: Up, Right, Down, Left
+ Face Buttons: A, B, X, Y
+ View Button
+ Menu Button
+ Left & Right Analog Sticks (w/ Capacitive Touch): L3, R3
+ Left & Right Trackpads
+ Steam Button
+ Access Button
+ Left & Right Analog Triggers: L1, R1
+ Left & Right Bumpers: L2, R2
+ Left & Right Upper Buttons: L4, R4
+ Left & Right Lower Buttons: L5, R5
+ Haptics: Yes
+ Gyro: 6-Axis IMU

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

## CheatSheet
**Steam Button**, **Power**, and **Switch to Desktop**.
| Command                                                               | Information      |
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
