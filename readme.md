# <p align="center">LEDDs</p>

<p align="center">PCB and enclosure design of a trailing edge light bulbs dimmer</p>

<p align="center">
  <img alt="PCB design: KiCad" src="https://img.shields.io/badge/KiCad-ivory?style=flat-square&logo=kicad&logoSize=auto&label=PCB&link=https://www.esphome.io" />
  <img alt="Firmware: ESPHome" src="https://img.shields.io/badge/ESPHome-ivory?style=flat-square&logo=esphome&logoSize=auto&label=Firmware&link=https://www.kicad.org" />
  <img alt="Enclosure design: Tinkercad" src="https://img.shields.io/badge/Tinkercad-ivory?style=flat-square&logo=tinkercad&logoSize=auto&label=Enclosure&link=https%3A%2F%2Fwww.tinkercad.com%2Fthings%2FahXHN7lsDMm-ledds-enclosure-v10" />
</p>

![Photo of the completed project][ledds-side_trn]


## Fabrication of v1.0

![ok fabrication](https://img.shields.io/badge/ok-greenyellow?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release v1.0 worked, but has some [minor problems][releaselog_v1_0].

<p align="center">
  <img src="/doc/assets/pcb-top_green_720p.jpg" alt="PCB - top" title="PCB - top" width="33%" />
  <img src="/doc/assets/pcb-bottom_green_720p.jpg" alt="PCB - bottom" title="PCB - bottom" width="33%" />
  <img src="/doc/assets/pcb-assembled_side_yellow_720p.jpg" alt="PCB - assembled, side" title="PCB - assembled, side" width="33%" />
</p>

<p align="center">
  <img src="/doc/assets/chassis-top_green_720p.jpg" alt="Chassis - top" title="Chassis - top" width="33%" />
  <img src="/doc/assets/pcb_chassis-assembled_front_red_720p.jpg" alt="PCB, chassis - assembled, front" title="PCB, chassis - assembled, front" width="33%" />
  <img src="/doc/assets/enclosure-assembled_side_red_720p.jpg" alt="Enclosure - assembled, side" title="Enclosure - assembled, side" width="33%" />
</p>

---


## Features
### Suitable for dimmable LED bulbs
Uses MOSFETs to switch off the voltage on the trailing edge.

### Rotary encoder for direct control
Fully usable as a standalone device.

Default rotary encoder functions:
 - rotate for brightness adjustment
 - press to turn ON/OFF
 - press and rotate to cycle through the effects

### Runs ESPHome firmware
Example configuration in [fw/example/](fw/example/).

### Enclosure
The enclosure consists of a 3D printed open-box chassis and a PCB top cover.

#### 3D printed chassis
[![Chassis - render][chassis-render]][tinkercad_design_v10]

Located in [enclosure/chassis](enclosure/chassis).

#### PCB top plate
Located in [enclosure/top_plate/](enclosure/top_plate/).


## Specifications
 - input voltage: ~230 V
 - maximum output power: 100 W
 - idle power draw: 0.5 W
 - dimensions:
   - width: 100 mm
   - depth: 51 mm
   - height: 25 mm


## Making the project
### 1. Ordering the parts
#### 1.1. PCB and top panel
Download the [combined gerbers][dw_combined_gerbers]. These include the PCB and the top plate on a single PCB.

#### 1.2. 3D printed chassis
Download the [chassis STL file][dw_chassis_stl].

Tested printing parameters:
JLC3DP:
 - technology: FDM (plastic)
 - material: PLA
 - color: white
 - surface finish: no

#### 1.3. Components
Download the [BOM][dw_bom].

Download the [enclosure's BOM][dw_enclosure_bom].

### 2. PCB assembly
Use the [interactive BOM][dw_ibom].

### 3. Firmware upload
> [!NOTE]
> A USB-to-UART adapter module is required.

  1. Download the provided [ESPHome example configuration][dw_esphome_cfg].
  2. Follow [ESPHome's getting started guide][esphome_getting_started] to compile and upload the firmware.

### 4. Enclosure
#### 1. Melt the threaded inserts into the enclosure.
![Chassis - top][chassis-top_green]

#### 2. Insert the PCB into the enclosure and screw in the cables.
![PCB, chassis - assembled, top][pcb_chassis-assembled_top_red]

#### 3. Insert the screws in the top plate and place the spacers around the screws.
![Plate - assembled, bottom][plate-assembled_bottom_blue]

#### 4. Screw the top plate through the PCB into the enclosure.
![Enclosure - assembled, side][enclosure-assembled_side_red]


## Contributing
Every type of contribution is welcome, like improvements or corrections on the:
 - documentation
 - schematic/PCB design
 - enclosure (chassis and top panel) design
 - ESPHome configuration

Contributions can be made as improvements or as variants (e.g. different enclosure design, ESPHome configuration, etc.).

The procedure is:
 - fork
 - branch
 - commit
 - pull request
 
You're welcome to post photos in [Discussions: Show and tell][discussions_show_and_tell].


<!-- links -->
[discussions_show_and_tell]: https://github.com/VasilKalchev/LEDDs/discussions/categories/show-and-tell

[releaselog_v1_0]: /doc/releaselog.md#v10---2025-02-17 "/doc/releaselog.md"
[repo_release_v1_0]: https://github.com/VasilKalchev/LEDDs/releases/tag/v1.0 "Release v1.0"
[repo_releases]: https://github.com/VasilKalchev/LEDDs/releases "All releases"

<!-- release assets -->
[dw_gerbers]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/gerbers_jlcpcb.zip "gerbers_jlcpcb.zip from release v1.0"
[dw_combined_gerbers]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/combined_gerbers_jlcpcb.zip "combined_gerbers_jlcpcb.zip from release v1.0"
[dw_bom]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/bom.csv "bom.csv from release v1.0"
[dw_enclosure_bom]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/enclosure_bom.csv "enclosure_bom.csv from release v1.0"
[dw_ibom]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/ibom.html "ibom.html from release v1.0"
[dw_chassis_stl]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/chassis.stl "chassis.stl from release v1.0"
[dw_esphome_cfg]: https://github.com/VasilKalchev/LEDDs/releases/download/v1.0/LEDDs.yaml "LEDDs.yaml from release v1.0"
<!-- /release assets -->

<!-- photos and screenshots -->
[ledds-side_trn]: /doc/assets/ledds-side_trn_720p.png
[ledds-front_trn]: /doc/assets/ledds-front_trn_720p.png
[pcb-top_green]: /doc/assets/pcb-top_green_720p.jpg
[pcb-bottom_green]: /doc/assets/pcb-bottom_green_720p.jpg
[pcb-assembled_side_yellow]: /doc/assets/pcb-assembled_side_yellow_720p.jpg
[pcb-assembled_front_red]: /doc/assets/pcb-assembled_front_red_720p.jpg
[pcb-assembled_bottom_yellow]: /doc/assets/pcb-assembled_bottom_yellow_720p.jpg
[pcb_chassis-assembled_front_red]: /doc/assets/pcb_chassis-assembled_front_red_720p.jpg
[pcb_chassis-assembled_top_red]: /doc/assets/pcb_chassis-assembled_top_red_720p.jpg
[plate-top_green]: /doc/assets/plate-top_green_720p.jpg
[plate-assembled_top_blue]: /doc/assets/plate-assembled_top_blue_720p.jpg
[plate-assembled_bottom_blue]: /doc/assets/plate-assembled_bottom_blue_720p.jpg
[chassis-side_green]: /doc/assets/chassis-side_green_720p.jpg
[chassis-top_green]: /doc/assets/chassis-top_green_720p.jpg
[chassis-bottom_green]: /doc/assets/chassis-bottom_green_720p.jpg
[enclosure-assembled_side_red]: /doc/assets/enclosure-assembled_top_red_720p.jpg

[chassis-render]: /doc/assets/chassis-render.png
<!-- /photos and screenshots -->

<!-- external -->
[tinkercad_design_v10]: https://www.tinkercad.com/things/ahXHN7lsDMm-ledds-chassis-v10 "Open Tinkercad design"
[esphome_getting_started]: https://esphome.io/guides/getting_started_hassio "Getting Started with ESPHome and Home Assistant"
[jlcpcb_gerbers_spec]: https://jlcpcb.com/help/article/how-to-generate-gerber-and-drill-files-in-kicad-8 "JLCPCB: How to generate Gerber and drill files in KiCad 8"
<!-- /external -->

<!-- /links -->


<!-- checklist & fabrication result template

<details>
<summary>/readme.md checklist</summary>

 - [x] set current version (after project name)
 - [x] set fabrication status
 - [x] update the sections as needed
 - [x] comment out this "checklist" and "templates" sections

</details>

<details>
<summary>/readme.md templates</summary>

## "Fabrication result" section:

![bad fabrication](https://img.shields.io/badge/bad-firebrick?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release vX.Y [didn't work](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :exclamation: Browse [repository releases][repo_releases] for a better version.

---

![poor fabrication](https://img.shields.io/badge/poor-orangered?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release vX.Y works, but has [significant problems](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :exclamation: Browse [repository releases][repo_releases] for a better version.

---

![average fabrication](https://img.shields.io/badge/average-yellow?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release vX.Y works, but has [some problems](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :grey_exclamation: Browse [repository releases][repo_releases] for a better version.

---

![ok fabrication](https://img.shields.io/badge/ok-greenyellow?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release vX.Y works, but has some [minor problems](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :memo: Browse [repository releases][repo_releases] for a better version.

---

![good fabrication](https://img.shields.io/badge/good-limegreen?style=for-the-badge&label=fabrication%20result)
> The fabricated board from release vX.Y works without problems!
>
> :tada: Recommended for fabrication.

---

![in development](https://img.shields.io/badge/in_development-dimgrey?style=for-the-badge&label=fabrication%20result)
> This version is currently in development...
>
> :hourglass_flowing_sand: Wait for the release or browse [repository releases][repo_releases] for an older, completed version.

---

![will not fabricate](https://img.shields.io/badge/won\'t_be_fabricated-firebrick?style=for-the-badge&label=fabrication%20result)
> Release vX.Y won't be fabricated, because ... .
>
> :exclamation: Browse [repository releases][repo_releases] for a better version.

---

![fix, not fabricated](https://img.shields.io/badge/fix%20(not%20fabricated)-indigo?style=for-the-badge&label=fabrication%20result)
> [Release vX.Y](/doc/releaselog.md#vX.Y) is a fix for vX.Y, but was not fabricated at the time of release.
>
> :memo: Check the latest [release note of this version](https://github.com/VasilKalchev/LEDDs/releases/tag/vX.Y) for a possible update on the fabrication status.

</details>

-->
