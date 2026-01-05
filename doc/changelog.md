# Change log


## v2.0 - 2025-04-02
Changed the MCU to ESP32-C3. Added an USB-C port.
Made the text on the top plate barely visible and rotated by 90 degrees, so that the enclosure can be rotated without appearing upside down.
Visual improvements to the top plate and chassis. Some minor functional improvements to the chassis.


### Schematic/Board
#### Added
 - USB-C receptacle for programming the MCU
 - 3.3 V linear regulator
 - bridged solder jumper and header, separating 3.3 V (for current measuring)
 - LED on the bottom of the board

#### Changed
 - MCU module from ESP-12 to ESP32-C3-C12
 - moved the top-right screw hole to make space for the USB-C receptacle
 - zero-cross rectification resistors values to 91 kΩ
 - widened zip-tie holes
 - adjusted cutout holes dimensions
 - increased some silkscreen text sizes

#### Removed
 - UART's CTS and DTR pins from the header
 - UART's auto enter programming circuit
 - test points for 3.3 V, analog input and GPIO4


### Top plate
#### Added
 - added holes around the knob
 - text on the bottom side

#### Changed
 - increased width of copper frame from 1 mm to 2 mm
 - rotated board name
 - all text from exposed copper to copper knockout (less visible)
 - widened the knob cutout by 0.2 mm
 - moved the top-right screw hole to match the PCB
 - screw holes from board outlines to footprints of mounting holes

#### Removed
 - holes for the LED, screw terminals and reset button


### Chassis
#### Added
 - name cutout on the back side
 - holes on the bottom
 - cutout for the USB-C receptacle
 - deboss for rubber legs

#### Changed
 - moved the name cutout to the right
 - wire cutouts from rectangle to ellipse
 - moved the top-right thread insert hole to match the PCB and the top plate

#### Removed
 - cutouts for the UART header and the antenna



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
