#!/bin/bash

DATE=$(date +"%Y-%m-%d-%H-%M-%S")
CAPDIR=~/Pictures/Screenshots

[ -d $CAPDIR ] || mkdir -p $CAPDIR

scrot $CAPDIR/ss-$DATE.png
