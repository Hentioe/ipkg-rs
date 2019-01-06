#!/usr/bin/env bash

PATH="$PATH:$STAGING_DIR/toolchain-mips_24kc_gcc-7.3.0_musl/bin"

LC_ALL=C.UTF-8 \
CC=mips-openwrt-linux-gcc \
cargo build --target=mips-unknown-linux-musl --release
