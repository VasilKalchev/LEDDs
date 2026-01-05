# Release log
Fabrication results.


## v2.0 - 2025-04-02
![good fabrication](https://img.shields.io/badge/good-greenyellow?style=for-the-badge&label=Release/fabrication%20result)

> The fabricated board from release v2.0 works, but has some minor issues.
>
> :memo: Recommended for fabrication!

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

### Problems
#### Minor
 - red LED is only visible from one side


## v1.0 - 2025-02-17
![good fabrication](https://img.shields.io/badge/good-greenyellow?style=for-the-badge&label=Release/fabrication%20result)

> The fabricated board from release v1.0 works, but has some minor issues.
>
> :grey_exclamation: Obsolete.

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


<!-- release assessment template -->

<details>
<summary>release assessment templates</summary>

## "Fabrication result" section:

![bad fabrication](https://img.shields.io/badge/bad-firebrick?style=for-the-badge&label=Release/fabrication%20result)
> The fabricated board from release vX.Y doesn't work: [releaselog](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :grey_exclamation: Use [version X.Y] for fabrication or wait for a fix.

---

![poor fabrication](https://img.shields.io/badge/poor-orangered?style=for-the-badge&label=Release/fabrication%20result)
> The fabricated board from release vX.Y works, but has significant problems: [releaselog](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :grey_exclamation: Use [version X.Y] for fabrication or wait for a fix.

---

![average fabrication](https://img.shields.io/badge/average-yellow?style=for-the-badge&label=Release/fabrication%20result)
> The fabricated board from release vX.Y works, but has some issues: [releaselog](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :grey_exclamation: Use [version X.Y] for fabrication or wait for a fix.

---

![good fabrication](https://img.shields.io/badge/good-greenyellow?style=for-the-badge&label=Release/fabrication%20result)

> The fabricated board from release vX.Y works, but has some minor issues: [releaselog](/doc/releaselog.md#vXY---202Y-MM-DD).
>
> :memo: Recommended for fabrication!
> :grey_exclamation: Obsolete.

---

![great fabrication](https://img.shields.io/badge/great-limegreen?style=for-the-badge&label=Release/fabrication%20result)
> The fabricated board from release vX.Y works without any known issues!
>
> :tada: Recommended for fabrication!
> :grey_exclamation: Obsolete.

---

![in development](https://img.shields.io/badge/in_development-dimgrey?style=for-the-badge&label=Release/fabrication%20result)
> This version is currently in development...
>
> :hourglass_flowing_sand: Wait for the release or use [version X.Y] for fabrication.

---

![will not fabricate](https://img.shields.io/badge/won\'t_be_fabricated-firebrick?style=for-the-badge&label=Release/fabrication%20result)
> Release vX.Y won't be fabricated, because ... .
>
> :exclamation: Browse [repository releases][repo_releases] for a better version.

---

![fix, not fabricated](https://img.shields.io/badge/fix%20(not%20fabricated)-indigo?style=for-the-badge&label=Release/fabrication%20result)
> [Release vX.Y](/doc/releaselog.md#vX.Y) is a minor fix for vX.Y and was not fabricated at the time of release.
>
> :memo: Check the latest [release note of this version](https://github.com/VasilKalchev/LEDDs/releases/tag/vX.Y) for a possible update on the fabrication status.

</details>

-->
