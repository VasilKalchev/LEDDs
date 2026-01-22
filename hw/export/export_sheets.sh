#!/bin/bash


# --drawing-sheet <sheet path>  # path to drawing sheet to use in plot, overriding the drawing sheet specified in the schematic file.
# -D <variable name>=<value>, --define-var <variable_name>=<value>  # add or override project variable definitions. Can be used multiple times to define multiple variables.
# -t <theme name>, --theme <theme name>  # the name of the theme to use for export. If no theme is given, the schematic editor’s currently selected theme is used.
# -b, --black-and-white  # export schematic in black and white.
# -e, --exclude-drawing-sheet  # plot PDF without a drawing sheet.
# --default-font <font name>  # default font name. Default: "KiCad Font".
# --exclude-pdf-property-popups  # do not generate property popups in PDF.
# --exclude-pdf-hierarchical-links  # do not generate clickable links for hierarchical elements in PDF.
# --exclude-pdf-metadata  # do not generate PDF metadata from AUTHOR and SUBJECT variables.
# -n, --no-background-color  # export schematic without a background color, regardless of theme.
# -p <page list>, --pages <page list>  # comma-separated list of pages to export. Blank or unspecified means all pages. To plot specific pages, give the root sheet as INPUT_FILE and specify the desired output pages with the --pages argument.



kicad-cli sch export pdf -n -o sch.pdf ../LEDDs.kicad_sch

kicad-cli pcb export svg -o pcb-sheet.svg -l B.Cu,B.Mask,B.Silkscreen,F.Cu,F.Mask,F.Silkscreen,Edge.Cuts ../LEDDs.kicad_pcb
kicad-cli pcb export svg -o f-pcb-sheet.svg -l F.Cu,F.Mask,F.Silkscreen,Edge.Cuts ../LEDDs.kicad_pcb
kicad-cli pcb export svg -o b-pcb-sheet.svg -l B.Cu,B.Mask,B.Silkscreen,Edge.Cuts --mirror ../LEDDs.kicad_pcb
