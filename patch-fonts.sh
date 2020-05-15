#!/bin/sh
export PATH="$PATH:$HOME/Downloads/nerd-fonts"
ARCHIVE=sudo.zip
DIST_DIR=dist
IN_FONT_DIR=sudo
OUT_FONT_DIR=sudo/patch
TTX_DIR=ttf_ttx/patch
FONT_PATCH_OPT="--octicons --powerline --powerlineextra"

ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Regular.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Italic.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Bold.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-BoldItalic.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Light.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-LightItalic.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Medium.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-MediumItalic.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-Thin.ttf
ttx -f -d $TTX_DIR $IN_FONT_DIR/Sudo-ThinItalic.ttf

gsed -i 's/unitsPerEm value="1024"/unitsPerEm value="784"/g' $TTX_DIR/*

ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Regular.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Italic.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Bold.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-BoldItalic.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Light.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-LightItalic.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Medium.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-MediumItalic.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-Thin.ttx
ttx -f -d $OUT_FONT_DIR $TTX_DIR/Sudo-ThinItalic.ttx

if command -v font-patcher 1>/dev/null 2>&1; then
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Bold.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-BoldItalic.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Light.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-LightItalic.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Regular.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Italic.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Thin.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-ThinItalic.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-Medium.ttf
  eval font-patcher $FONT_PATCH_OPT -out $OUT_FONT_DIR $OUT_FONT_DIR/Sudo-MediumItalic.ttf
fi

rm -f $DIST_DIR/$ARCHIVE
zip -i *.ttf -r $DIST_DIR/$ARCHIVE $OUT_FONT_DIR