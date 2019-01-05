#!/usr/bin/env bash

SCRIPTS=./ipkg-rs
"$SCRIPTS/build_ipk.sh" "$1" arm_cortex-a7_neon-vfpv4 arm-unknown-linux-musleabihf
