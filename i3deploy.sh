#!/bin/bash
## Deploys i3 configuration
## Includes:
##  - ~/.Xdefaults				urxvt
##  - ~/.config/compton.conf	Compton
##  - ~/.config/i3				i3 config dir
##  - ~/.config/polybar			polybar config dir
##  - ~/.config/conky			conky config dir

DEBUG=false

### ENV

SOURCEDIR=~/.dotfiles/i3conf
BKDIR=~/.dotfiles/backup/i3conf.orig
PWD=$(dirname $(readlink -f $0))

# Debug

$DEBUG && echo $PWD
$DEBUG && echo $SOURCEDIR

# Environment sanity

if [ $PWD != $SOURCEDIR ]; then
	printf "This script must be run from within %s.\n" $SOURCEDIR
fi

# Make the backup dir if it doesn't exist

[ -d $BKDIR ] || mkdir -p $BKDIR

# Link files and dirs

# Xdefaults
if [ ! -L ~/.Xdefaults ]; then
	if [ -f ~/.Xdefaults ]; then
		echo "Moving ~/.Xdefaults to $BKDIR..."
		mv -n ~/.Xdefaults $BKDIR/
	fi
	echo "Creating symlink to .Xdefaults in home directory..."
	ln -s $SOURCEDIR/Xdefaults ~/.Xdefaults
fi

# .config/compton.conf
if [ ! -L ~/.config/compton.conf ]; then
	if [ -f ~/.config/compton.conf ]; then
		echo "Moving ~/.config/compton.conf to $BKDIR..."
		mv -n ~/.config/compton.conf $BKDIR/
	fi
	echo "Creating symlink to .compton.conf in home directory..."
	ln -s $SOURCEDIR/compton.conf ~/.config/compton.conf
fi

# .config/i3/
if [ ! -L ~/.config/i3 ]; then
	if [ -d ~/.config/i3 ]; then
		echo "Moving ~/.config/i3 to $BKDIR..."
		mv -n ~/.config/i3 $BKDIR/
	fi
	echo "Creating symlink to i3/ in .config directory..."
	ln -s $SOURCEDIR/i3 ~/.config/i3
fi

# .config/conky
if [ ! -L ~/.config/conky ]; then
	if [ -d ~/.config/conky ]; then
		echo "Moving ~/.config/conky to $BKDIR..."
		mv -n ~/.config/conky $BKDIR/
	fi
	echo "Creating symlink to conky/ in .config directory..."
	ln -s $SOURCEDIR/conky ~/.config/conky
fi

# .config/polybar/
if [ ! -L ~/.config/polybar ]; then
	if [ -d ~/.config/polybar ]; then
		echo "Moving ~/.config/polybar to $BKDIR..."
		mv -n ~/.config/polybar $BKDIR/
	fi
	echo "Creating symlink to polybar/ in .config directory..."
	ln -s $SOURCEDIR/polybar ~/.config/polybar
fi

# .config/doc
if [ ! -L ~/.config/doc ]; then
	if [ -d ~/.config/doc ]; then
		echo "Moving ~/.config/doc to $BKDIR..."
		mv -n ~/.config/doc $BKDIR/
	fi
	echo "Creating symlink to doc/ in .config directory..."
	ln -s $SOURCEDIR/doc ~/.config/doc
fi
