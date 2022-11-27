#!/usr/bin/env bash

set -x

KLIPPER_PATH="${HOME}/klipper"
SRCDIR="$HOME//klipper_config"

ln -sf "${SRCDIR}/network_status.py" "${KLIPPER_PATH}/klippy/extras/network_status.py"

