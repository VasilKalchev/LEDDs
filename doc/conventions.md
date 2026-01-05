# Conventions

## Versioning
### Hardware (board)
Board releases are made with a major and a minor version (e.g. "LEDDs v1.2").

The major version is incremented when making incompatible changes to the board (e.g. pin rearrangement). The minor version is incremented for fixes or small additions that preserve compatibility with the firmware and the enclosure.

### Enclosure
The chassis and top plate's major versions correspond with the board's major version that they are compatible with.

The minor version is incremented for improvements.

Variants can be specified for different materials or cosmetic changes.
The chassis version must specify the material they are designed for, because of the different thread hole diameters.

### Examples:
#### Boards
`v1.0`: major version 1, minor version 0, original variant

#### Chassis
`v1.3-plastic`: compatible with all boards and plates versioned 1.Y, minor version 3, variant for FDM plastic (thread holes for inserts)
`v2.0-plastic`: compatible with all boards and plates versioned 2.Y, minor version 0, variant for SLA resin (thread holes direct screwing)

#### Top plates
`v3.1`: compatible with all boards and chassis versioned 3.Y, minor version 1, original variant
`v4.2-no_knob`: compatible with all boards and chassis versioned 4.Y, minor version 2, variant without knob cutout


## Development and release
### Before starting development
New board versions are developed in a separate branch.

### During development
Every change to the board is documented in [changelog.md](changelog.md).

### Before release
The [release_checklist.md](release_checklist.md) is completed.
