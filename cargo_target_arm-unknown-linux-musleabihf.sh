#!/usr/bin/env bash

LC_ALL=C.UTF-8 \
CC=arm-openwrt-linux-gcc \
cargo build --target=arm-unknown-linux-musleabihf --release
