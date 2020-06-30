#!/bin/sh

[ $# -eq 0 ] && { echo "Usage: $0 cervelat.png [--favicon]"; exit 1; }

dirname="icons"
mkdir -p "$dirname"

infile="$1"
extension="${infile##*.}"
filename="${infile%.*}"

for size in 128 144 152 192 256 512; do
    convert ${infile} -resize ${size}x${size} ${dirname}/${filename}-icon-${size}.${extension}
done

[ "$2" == "--favicon" ] && { convert $infile -resize 16x16 ../favicon.ico; echo "favicon created"; }