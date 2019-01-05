#!/usr/bin/env bash

BIN="$1"
ARCH="$2"
TARGET="$3"
IPKG_BUILD_TOOL="$OPENWRT_SDK_HOME/scripts/ipkg-build"
IPK_BUILD_DIR=./build-ipk
SCRIPTS=./ipkg-rs

"$SCRIPTS/cargo_target_$TARGET.sh"

rm -fr "$IPK_BUILD_DIR" \
&& mkdir -p "$IPK_BUILD_DIR" \
&& mkdir -p "$IPK_BUILD_DIR/usr/bin" \
&& mkdir -p "$IPK_BUILD_DIR/CONTROL"

cp "./target/$TARGET/release/$BIN" "$IPK_BUILD_DIR/usr/bin/" \
&& cp "$SCRIPTS/control" "$IPK_BUILD_DIR/CONTROL/control" \
&& sed -i "s/\$ARCH/$ARCH/g" "$IPK_BUILD_DIR/CONTROL/control"

LANG=en_us_utf8 # Avoid date format issues
"$IPKG_BUILD_TOOL" "$IPK_BUILD_DIR"
