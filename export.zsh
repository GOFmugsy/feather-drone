#!/bin/zsh
hash=`git rev-parse --short HEAD`
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o feather-drone-$hash.stl feather-drone.scad
