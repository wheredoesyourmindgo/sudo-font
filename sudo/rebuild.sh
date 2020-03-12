#!/bin/sh
mkdir -p output/ output/ttf output/ttx
./build-ttx.sh
./update-ttx.sh
./build-ttf.sh