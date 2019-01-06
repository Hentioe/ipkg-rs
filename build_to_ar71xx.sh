#!/usr/bin/env bash

SCRIPTS=./ipkg-rs
"$SCRIPTS/build_ipk.sh" "$1" mips_24kc mips-unknown-linux-musl
