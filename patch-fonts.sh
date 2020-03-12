#!/bin/sh
ARCHIVE=sudo.zip
DISTDIR=dist
INFONTDIR=sudo
OUTFONTDIR=sudo/patch
TTXDIR=ttf_ttx/patch

ttx -f -d $TTXDIR $INFONTDIR/Sudo-Regular.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-Italic.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-Bold.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-BoldItalic.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-Light.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-LightItalic.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-Medium.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-MediumItalic.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-Thin.ttf
ttx -f -d $TTXDIR $INFONTDIR/Sudo-ThinItalic.ttf

gsed -i 's/unitsPerEm value="1024"/unitsPerEm value="784"/g' $TTXDIR/*

ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Regular.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Italic.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Bold.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-BoldItalic.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Light.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-LightItalic.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Medium.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-MediumItalic.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-Thin.ttx
ttx -f -d $OUTFONTDIR $TTXDIR/Sudo-ThinItalic.ttx

rm -f $DISTDIR/$ARCHIVE
zip -r $DISTDIR/$ARCHIVE $OUTFONTDIR