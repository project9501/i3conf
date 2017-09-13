#!/bin/bash
## Starts up conky windows
## Gives the WM a few secs to start up first

sleep 6

conky -d -c ~/.config/conky/gotham.conf

