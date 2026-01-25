# Change log


## v2.0 - 2025-04-02
Changed the MCU to ESP32-C3. Added an USB-C port.

### Added
 - USB-C receptacle for programming the MCU
 - 3.3 V linear regulator
 - bridged solder jumper and header, separating 3.3 V (for current measuring)
 - LED on the bottom of the board

### Changed
 - MCU module from ESP-12 to ESP32-C3-C12
 - moved the top-right screw hole to make space for the USB-C receptacle
 - zero-cross rectification resistors values to 91 kΩ
 - widened zip-tie holes
 - adjusted cutout holes dimensions
 - increased some silkscreen text sizes

### Removed
 - UART's CTS and DTR pins from the header
 - UART's auto enter programming circuit
 - test points for 3.3 V, analog input and GPIO4

 

<!-- template

## vX.Y-type - 202Y-MM-DD
Comment...

### Schematic/Board
#### Added
 - ... (#<issue>)
 -

#### Fixed
 -
 -

#### Changed
 -
 -

#### Removed
 -
 -

-->
