#!/usr/bin/env bash

PATH="$PATH:$STAGING_DIR/toolchain-arm_cortex-a7+neon-vfpv4_gcc-7.3.0_musl_eabi/bin"

LC_ALL=C.UTF-8 \
CC=arm-openwrt-linux-gcc \
cargo build --target=arm-unknown-linux-musleabihf --release
