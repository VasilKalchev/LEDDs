<p align=center>
  <img src="doc/assets/ledds-front-illustration-title.png" alt="LEDDs" title="LEDDs" width="50%" />
</p>

<p align=center>trailing-edge dimmer for LED bulbs</p>

<div align=center>

![schematic_pcb](https://img.shields.io/badge/KiCad-msg?style=flat-square&logo=kicad&logoColor=ivory&logoSize=auto&label=Schematic%20%2F%20PCB&labelColor=grey&color=gainsboro) ![firmware](https://img.shields.io/badge/ESPHome-msg?style=flat-square&logo=esphome&logoColor=ivory&logoSize=auto&label=Firmware&labelColor=grey&color=gainsboro&link=https%3A%2F%2Fesphome.io) ![chassis](https://img.shields.io/badge/Tinkercad-msg?style=flat-square&logo=tinkercad&logoColor=ivory&logoSize=auto&label=Chassis&labelColor=grey&color=gainsboro&link=https%3A%2F%2Fwww.tinkercad.com%2F)

</div>


**LEDDs** is an open-hardware, DIY smart dimmer designed for 230 V LED bulbs. It is built around the ESP32-C3-12F and is designed to sit on a desk or table, replacing standard inline cord switches.

The project consists of a **PCB**, a **3D-printable chassis**, and a **top plate** designed as a PCB. It runs [ESPHome](https://esphome.io) for integration with Home Assistant and features a **rotary encoder** so it can be controlled easily or used as a standalone device.

> [!CAUTION]
> **MAINS VOLTAGE:** This device operates at **230 VAC**. Touching live components can result in serious injury or death.
> * Do not attempt to build this device unless you are experienced with high-voltage electronics.
> * The device must be unplugged from mains power before opening the enclosure.
> * While the design includes safety features (fuse, MOVs), it is not a certified design and should be treated with caution.


## Table of contents
* [Why trailing-edge?](#grey_question-why-trailing-edge)
* [Features](#star-features)
* [Specifications](#straight_ruler-specifications)
* [Release/fabrication of version 2.0](#releasefabrication-of-v20)
* [Repository structure](#open_file_folder-repository-structure)
* [Bill of materials](#euro-bill-of-materials)
* [Build](#hammer-build)
   * [Prerequisites](#prerequisites)
   * [1. Ordering the components](#1-ordering-the-components)
   * [2. PCB assembly instructions](#2-pcb-assembly-instructions)
   * [3. Flashing the firmware](#3-flashing-the-firmware)
   * [4. Preparing the enclosure](#4-preparing-the-enclosure)
   * [5. Final assembly](#5-final-assembly)
* [Usage](#bulb-usage)
   * [Control](#control)
   * [LED indicators](#led-indicators)
   * [Default light effects](#default-light-effects)
* [Versions, releases and compatibility](#page_with_curl-versions-releases-and-compatibility)
* [Contributing](#coffee-contributing)
* [License](#license)

---

## :grey_question: Why trailing-edge?
Most dimmers use **leading-edge** (TRIAC) dimming (designed for incandescent bulbs). They modulate power to the load by cutting the beginning of every AC half cycle. This creates a voltage spike that can cause buzzing and reduced lifespan in the capacitive power supplies found in LED bulbs.

**LEDDs uses trailing-edge dimming.** By using MOSFETs to cut the waveform at the *end* of the AC cycle, the voltage ramps down smoothly. This results in:
* reduced electrical noise and buzzing
* smoother dimming with reduced flicker
* lower minimum brightness levels

> The schematic and PCB can be [viewed][kicanvas_v2_0] in KiCanvas.

## :star: Features
- **ESP32-C3** based with ESPHome firmware for integration with Home Assistant
- **Standalone** operation, doesn't require Home Assistant
- **Rotary encoder** control: rotate to dim, press+rotate for effects, press for on/off
- LEDs: red (rotation feedback), blue (status indicator), white (ambient)
- Included **enclosure design**: 100 mm × 51 mm × 25 mm - ideal for desk lamp modifications
- Low idle power: ~0.3 W in standby
- Open source: MIT licensed

## :straight_ruler: Specifications

| Parameter              | Value                        |
| ---------------------- | ---------------------------- |
| Input voltage          | 230 VAC                      |
| Maximum output power   | 100 W                        |
| Idle power draw        | ~0.3 W                       |
| Protections            | fuse and MOVs                |
| Microcontroller module | ESP32-C3-12F [^1]            |
| Dimensions             | 100 × 51 × 25 mm (W × D × H) |
| Connectivity           | Wi-Fi, USB-C (programming)   |

[^1]: Also compatible with ESP8266 ESP-12F, but not recommended.


> [!IMPORTANT]
> Designed for 230 VAC at 50 Hz.
>
> Usage with 120 VAC at 60 Hz will probably require adjusting the component values of the zero-cross and the voltage regulator circuits.


---

## Release/fabrication of v2.0
![very good fabrication](https://img.shields.io/badge/very%20good-lawngreen?style=for-the-badge&label=Release/fabrication%20result)

> The fabricated board from release v2.0 works; it has a few minor issues: [/doc/releaselog.md v2.0][releaselog_v2_0].
> 
> :memo: Recommended for fabrication!

---

## :open_file_folder: Repository structure
```

├── hw/                       # main PCB design (KiCad project)
│   ├── lib/                  # symbols and footprints
│   ├── assets/               # fonts and graphics
│   └── export/               # scripts for exporting gerbers, BOM and schematics/PCB PDFs
├── fw/                       # ESPHome YAML configurations and firmware binaries
├── doc/                      # additional documentation
│   ├── releaselog.md         # main PCB release log
│   ├── changelog.md          # main PCB change log
├── enclosure/
│   ├── chassis/              # 3D printable chassis
│   │   ├── releaselog.md     # chassis release log
│   │   ├── changelog.md      # chassis change log
│   │   ├── vX.Y-variant_a/
│   │   └── vX.Y-variant_b/
│   └── top_plate/            # top plate design (KiCad project)
│       ├── releaselog.md     # top plate release log
│       ├── changelog.md      # top plate change log
│       ├── vX.Y-variant_a/
│       └── vX.Y-variant_b/
└── img/                      # photos and renders
```

---

## :euro: Bill of materials
 - components: ~€15
 - PCB: €4 (ordered as prototype board)
 - top plate: €0-4 (can be combined with the main PCB)
 - chassis: €4-10 (when ordered)

Check out the BOM provided in the release bundle for complete components list.


## :hammer: Build
### Prerequisites
- skills: soldering [^2], experience with mains electricity
- tools: soldering iron, hot air gun (recommended), 3D printer or access to 3D printing service, multimeter

[^2]: Trickiest part is the USB-C port. The board can be ordered pre-assembled.

[Download][dw_release_bundle_v2_0] the release bundle.

### 1. Ordering the components
  - **PCBs**: order the main PCB and the top plate PCB from your preferred fabricator
    - gerbers for JLCPCB: available in the bundle
    - for other fabricators - use KiCad to generate gerbers according to the manufacturer's instructions
  - **chassis**: choose a variant from the provided STL files

### 2. PCB assembly instructions
> [!TIP]
> Use the provided **interactive BOM** for soldering the components.

<!-- [![ibom preview](doc/assets/ibom-screenshot_ann_720p.png)]() -->
<p align=center>
  <img src="doc/assets/ibom-screenshot_ann_720p.png" alt="interactive BOM preview" width="75%" />
</p>

#### Components choices

##### Microcontroller module
<strong>ESP32-C3-12F (recommended)</strong>

<img src="doc/assets/assembly/c3_12f-720p.jpg" alt="esp32-c3-12f" width="50%" />

- solder R13

<details><summary><strong>ESP8266 ESP-12F (not recommended)</strong></summary>

<img src="doc/assets/assembly/12f-720p.jpg" alt="esp-12f" width="50%" />

- solder JP2
- don't solder R13
- don't solder R8 and D5 ("led_3")
- isolate pins 12 and 13 from the PCB pads (with tape)
- don't solder R6 and D3 ("led_1")

ESP8266 doesn't support native USB and requires an external USB to serial adapter for programming.

</details>

##### Zero-cross optoisolator
The PCB has footprints for a choice between 2 optoisolators that connect the zero-cross signal to the MCU.

<strong>H11L1SR2M</strong>

<img src="doc/assets/assembly/h11l1-720p.jpg" alt="h11l1" width="50%" />

 - solder the optoisolator on footprint U4
 - solder C13
 - don't solder R23

<details><summary><strong>PC817XI (not recommended)</strong></summary>

<img src="doc/assets/assembly/pc817-720p.jpg" alt="pc817" width="50%" />

- solder the optoisolator on footprint U3
- solder R23
- no need to solder C13

This optoisolator is the same as the one used for controlling the MOSFET's gate, but didn't work good for the zero-cross circuit.

</details>

##### Skipping the relay
The relay is used to power off the mains part of the circuit when the load is turned off. This is intended as a peace of mind feature and can be omitted.

<img src="doc/assets/assembly/relay-720p.jpg" alt="relay" width="50%" />

 - don't solder K1, C3, D2, R2 and Q1
 - use a wire to short pin 11 to 14
 - use a wire to short pin 21 to 24

##### Skipping the rotary encoder
<img src="doc/assets/assembly/boot_button-720p.jpg" alt="boot button" width="50%" />

If the rotary encoder is not required, there is no need to solder R3, R4, C4, C5 and C6. Optionally a push button (SW2) can be soldered so boot mode can be entered manually.

A modified top plate (without a hole in the middle) is recommended for safety reasons (not currently available).

##### Using the UART header instead of the USB for programming *(not tested)*
<img src="doc/assets/assembly/uart-720p.jpg" alt="uart" width="50%" />

Solder R12 and header J4, use a USB to serial adapter.

### 3. Flashing the firmware
 - Connect to the board via USB-C.
 - Use [ESPHome's web flasher](https://web.esphome.io/) to upload one of the provided firmware binaries.
   - hass.bin: Home Assistant + rotary encoder
   - web_server.bin: self hosted web server + rotary encoder
   - standalone: rotary encoder only
 - Set your Wi-Fi credentials using the ESPHome web flasher.
 - Test before wiring.

> [!TIP]
> The YAML configurations used for compiling the provided binaries are available under [/fw/esphome_yamls/](/fw/esphome_yamls/).

### 4. Preparing the enclosure
- plastic chassis: install the heat-set threaded inserts in the holes using a soldering iron
- resin chassis: no preparation needed

### 5. Final assembly
 - Mount a knob to the rotary encoder.
 - Place the PCB inside the chassis.
 - Screw the mains power cable to the terminal on the left (marked with a power plug). **Don't connect power until fully assembled.**
 - Screw the lamp socket cable to the terminal on the right (marked with a bulb).
 - Pass the screws through the top plate and place the spacers on the screws.
 - Screw the top plate through the PCB into the chassis.


## :bulb: Usage
### Control
**Directly** *(possible with all firmware variants)*:
 - **press**: on/off
 - **rotate**: brightness adjustment
 - **press + rotate**: cycle lighting effects

**Home Assistant** *(included in hass.bin)*:

Integrating the device in Home Assistant: https://esphome.io/guides/getting_started_hassio/#connecting-your-device-to-home-assistant.

![screenshot of the device in Home Assistant](doc/assets/hass-screenshot.png)

The "Configuration" section allows customization of the device:
 - **Bulb power rating**: input the power rating of the bulb, this is used for the power estimation sensor ("Power \[est\]").
 - **Gamma correct**: Adjust the gamma correction to achieve linear dimming.
 - **Minimum level**: The lowest level at which the bulb emits light. *Note: this value needs to be updated every time gamma correction is changed.*
 - **Restore mode**: Initial state of the bulb when powered.
 - **Transition length**: How fast the bulb changes brightness in milliseconds.
 - **LED: red/blue/white**: set the ambient brightness of the LEDs.

**Web server** *(included in web_server.bin)*:
> This is useful if you don't have Home Assistant, but want to control the device remotely.

![screenshot of the web UI](doc/assets/web_server-screenshot_720p.png)

### LED indicators
There are three LEDs on the board:
 - **red (top, led_1):** ambient / rotation feedback
 - **blue (top, led_2):** ambient / status indicator
 - **white (bottom, led_3):** ambient

### Default light effects
Light effects can be cycled with the rotary encoder or chosen directly from a UI.

<div>
<p align="center">
  <img src="/doc/assets/effect-pulse_low_fast.gif" alt="" title="Pulse (low, fast)" width="25%" />
  <img src="/doc/assets/effect-pulse_low_slow.gif" alt="" title="Pulse (low, slow)" width="25%" />
  <img src="/doc/assets/effect-pulse_high_fast.gif" alt="" title="Pulse (high, fast)" width="25%" />
  <img src="/doc/assets/effect-pulse_high_slow.gif" alt="" title="Pulse (high, slow)" width="25%" />
</p>
<p align="center">
  <img src="/doc/assets/effect-pulse_full_fast.gif" alt="" title="Pulse (full, fast)" width="25%" />
  <img src="/doc/assets/effect-pulse_full_slow.gif" alt="" title="Pulse (full, slow)" width="25%" />
  <img src="/doc/assets/effect-flicker_soft.gif" alt="" title="Flicker (soft)" width="25%" />
  <img src="/doc/assets/effect-flicker_intense.gif" alt="" title="Flicker (intense)" width="25%" />
</p>
</div>


## :page_with_curl: Versions, releases and compatibility
Each fabrication run results in a **GitHub release**.
- Semantic versioning (major.minor), no patch versions.
- PCB, chassis, and top plate are versioned independently.
- Same **major versions fit together**.


## :coffee: Contributing
Every type of contribution is welcome, like improvements or corrections to the:
- schematic/PCB design
- documentation
- enclosure (chassis and top panel) design
- ESPHome configuration

Contributions can be made as improvements or as variants (e.g. different enclosure design, ESPHome configuration, etc.).

The procedure is:
- fork
- branch
- commit
- pull request

```mermaid
gitGraph
    commit tag: "v1.0"
    branch improve_x
    checkout improve_x
    commit id: "Improve x"
    commit id: "Re-generate exports"
    commit id: "Update board documentation"
    checkout main
    merge improve_x tag: "v1.1"
    branch replace_y
    checkout replace_y
    commit id: "Replace y"
    commit id: "Generate exports"
    commit id: "Compile binaries"
    commit id: "Update all documentation"
    checkout main
    merge replace_y tag: "v2.0"
```

You're welcome to post your builds in [Discussions: Show and tell](https://github.com/VasilKalchev/LEDDs/discussions/categories/show-and-tell).

## License
This project is licensed under the **MIT License**.

---

**Disclaimer**: This project involves mains voltage electricity. The author assumes no liability for injury, damage, or regulatory violations. Build and use at your own risk. Ensure compliance with local electrical codes and regulations.


<!-- current version links -->

[kicanvas_v2_0]: https://kicanvas.org/?github=https%3A%2F%2Fgithub.com%2FVasilKalchev%2FLEDDs%2Ftree%2Fv2.0%2Fhw
[dw_release_bundle_v2_0]: https://github.com/VasilKalchev/LEDDs/releases/download/v2.0/bundle.zip

[releaselog_v2_0]: /doc/releaselog.md#v20---2025-04-02

<!-- /current version links -->


<!-- checklist
<details>
<summary>/readme.md checklist</summary>

 - [x] set release result (template in releaselog.md)
 - [x] update the sections as needed
 - [x] comment out this checklist

</details>

-->
<!-- /checklist -->
