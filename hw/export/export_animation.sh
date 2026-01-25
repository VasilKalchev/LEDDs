#!/bin/bash


OUTPUT_DIR="_rotate"
INPUT_FILE="../LEDDs.kicad_pcb"
ZOOM=1.14
WIDTH=2560
HEIGHT=1440
QUALITY=basic  # basic | high | user
ROTATE_X=0
ROTATE_Z=0
ROTATION=360 # Total rotation angle
STEP=1 # Rotation step in degrees
FRAMERATE=60 # Framerate for the final video

mkdir -p $OUTPUT_DIR

let FRAMES=ROTATION/STEP
for ((i = 0; i < FRAMES; i++)); do
    ROTATE_Y=-$(($i * STEP))
    OUTPUT_PATH="$OUTPUT_DIR/frame$i.png"
    echo "Rendering frame $i ($ROTATE_Y degrees) to $OUTPUT_PATH"
    kicad-cli pcb render \
      --rotate "$ROTATE_X,$ROTATE_Y,$ROTATE_Z" \
      --zoom $ZOOM -w $WIDTH -h $HEIGHT --background transparent --perspective \
      --quality $QUALITY \
      -o $OUTPUT_PATH $INPUT_FILE > /dev/null
done


echo "Combining frames into an animation..."

ffmpeg -y -framerate $FRAMERATE -i "$OUTPUT_DIR/frame%d.png" -vf "crop=iw*0.8:ih*1,scale=860:-1:flags=lanczos,fps=30" -loop 0 -q:v 40 -lossless 0 -an -map_metadata -1 rotate.webp
