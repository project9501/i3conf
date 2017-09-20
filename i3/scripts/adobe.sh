#!/sbin/sudo /bin/bash
## Installs FOSS equivalents for Adobe products
## Arch Linux
## Photoshot:		the GIMP
## Illustrator:		Inkscape
## InDesign:		Scribus
## Premiere:		OpenShot
## Animate:			Synfig Studio
## Lightroom:		darktable
## Audition:		Ardour
## Acrobat:			MasterPDF Editor

pacman -S gimp inkscape scribus openshot synfigstudio darktable ardour
yaourt -S masterpdfeditor
