# Release log
Fabrication results.


## v1.0 - 2025-02-17
![ok fabrication](https://img.shields.io/badge/ok-greenyellow?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release v1.0 worked, but has some minor problems

### Properties:
 - Fabricator: JLCPCB
 - Material: FR4 (Tg 135)
 - Layers: 2
 - PCB thickness: 1 mm
 - Solder mask color: white
 - Silkscreen: black
 - Surface finish: HASL (with lead)
 - Copper weight: 1 oz
 - Via covering: tented
 - Board outline tolerance: +-0.2 mm
 - Appearance quality: IPC Class 2 Standard
 - Silkscreen technology: Ink-jet/screen printing

### Problems:
#### Minor
 - ESP8266 is an obsolete MCU
 - R14/15/18/19 have non-standard values
 - zip-tie holes are too small
 - silkscreen with GitHub link is barely readable
 - relay pins cutouts are very close to the edge of the board
 - GPIO2 is connected to both led_1 and ESP-12's on-board LED
 - RST hole is too small
 - terminal screw holes are too small
 - it'll be better if the board can be rotated


<!-- checklist

<details>
<summary>/releaslog.md checklist</summary>

 - [x] complete [/hw/project_checklist.md](/hw/project_checklist.md)
 - [x] fabricate
 - [x] assembly and test

 - [ ] FW

 - [ ] add version with changes to [/doc/changelog.md](/doc/changelog.md)
 - [ ] add version with fabrication result to [/doc/releaselog.md](/doc/releaselog.md)

 - [ ] use the scripts in [/hw/export/] to generate "release" files locally
 - [ ] complete [/doc/assets/readme/readme.md](/doc/assets/readme/readme.md) checklist
 - [ ] complete [/readme.md](/readme.md) checklist

 - [ ] mark older boards of this major version as obsolete (in [/doc/releaselog.md](/doc/releaselog.md) and in repository releases)

 - [ ] delete [/hw/project_checklist.md](/hw/project_checklist.md)


List of checklists inside the repository:
 - [/hw/project_checklist.md](/hw/project_checklist.md)
 - [/fw/readme.md](/fw/readme.md)
 - [/doc/assets/readme/readme.md](/doc/assets/readme/readme.md)
 - [/readme.md](/readme.md)

</details>

-->
