#!/bin/bash


kicad-cli pcb export svg -o pcb-sheet.svg -l B.Cu,B.Mask,B.Silkscreen,F.Cu,F.Mask,F.Silkscreen,Edge.Cuts ../top_plate.kicad_pcb
kicad-cli pcb export svg -o f-pcb-sheet.svg -l F.Cu,F.Mask,F.Silkscreen,Edge.Cuts ../top_plate.kicad_pcb
kicad-cli pcb export svg -o b-pcb-sheet.svg -l B.Cu,B.Mask,B.Silkscreen,Edge.Cuts --mirror ../top_plate.kicad_pcb
