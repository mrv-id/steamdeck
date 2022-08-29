# Hitchhiker's Guide to the Steam Deck

![logo](https://github.com/mrv-id/steamdeck/blob/main/logo.png)

> The **[Steam Deck](https://www.steamdeck.com/en/)** (released on February 25, 2022) is a handheld gaming computer developed by **Valve**. It is powerd by AMD's RDNA 2 architecture, running **SteamOS** (a GNU/Linux Arch based disibutrion) designed to play both native and Windows emulated titles via the **Proton** compatibility layer.

## Technical Specifications

![tech specs 1](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-1.png)
![tech specs 2](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-2.png)
![tech specs 3](https://github.com/mrv-id/steamdeck/blob/main/tech-specs-3.png)

### Compute
|:---:|:---------------------------------------:|
| CPU | Zen 2 (4 Cores / 8 Threads, 2.4-3.5GHz) |
| GPU | RDNA 2 (8 Compute Units, 1.0-1.6GHz)    |
| RAM | 16GB LPDDR5                             |
| SSD | 64GB eMMC (PCIe Gen 2 x1), 265GB NVMe (PCIe Gen 3 x2), 512GB NVMe (PCIe Gen 3 x4) |

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
	
### Display
+ Type: IPS (Optically Bonded)
+ Size: 7" (Diagonal)
+ Resolution: 1280 x 800px
+ Aspect Ratio: 16:10
+ Refresh Rate: 60Hz
+ Brightness: 400nits
+ Touch: Yes
+ Sensor: Ambient Light

### Connectivity
+ Bluetooth: 5.0
+ Wi-Fi: Dual-band, 2 x 2 MIMO, 2.4GHz & 5GHz, 802.11a/b/g/n/ac

### Audio
+ Channels: Stereo w/ Embedded DSP
+ Microphones: Dual Array
+ Jack: 3.5mm, Combo

### Power
+ Input: 45W, USB Type-C, PD 3.0
+ Battery: 40Whr

### Expansion
+ microSD: UHS-I
+ External: USB 3.2 Gen 2, Type-C w/ DisplayPort (8K @60Hz or 4K @ 120Hz)

### Size
+ Dimensions: 298mm x 117mm x 49mm
+ Weight: 669grams

### Software
+ Operating System: SteamOS (ver. 3.0)
+ Desktop: KDE Plasma

## CheatSheet
**Steam Button**, **Power**, and **Switch to Desktop**.
| CMD                                                                   | INFO             |
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
