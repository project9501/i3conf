#!/bin/bash
## Stardate epoch is July 15, 1987 00:00:00 = SD41000.0
## i.e. the TNG epoch
## 2017-09-14 (SD71169.2)

DEBUG=false

THISYEAR=$(date +"%Y")
NEXTYEAR=$(( THISYEAR+1 ))

TTIME=$(date -d "$THISYEAR-07-15 00:00:00+0" +"%s")
NTIME=$(date -d "$NEXTYEAR-07-15 00:00:00+0" +"%s")

NOW=$(date +"%s")

NOW=$(( NOW-TTIME ))
NOW=$(( NOW*1000 ))
TOT=$(( NTIME-TTIME ))

PREFIX=$(( THISYEAR-1987 ))
PREFIX=$(( PREFIX+41 ))


SUFFIX=$(echo "scale=3;$NOW/$TOT" | bc)

$DEBUG && printf "%d %d %d %d %d %d %d %f\n" $THISYEAR $NEXTYEAR $TTIME $NTIME $NOW $TOT $PREFIX $SUFFIX

printf "%d%.3f" $PREFIX $SUFFIX
