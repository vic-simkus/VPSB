#!/bin/bash

echo "** Running VPSB startup scripts **"

CPIN="/opt/source/bb.org-overlays/tools/beaglebone-universal-io/config-pin"

echo "Setting P9_27 (AUX1) to out and low"
$CPIN P9_27 low

echo "Setting P8_39 (AUX2) to out and low"
$CPIN P8_39 low


echo "Setting P8_40 (ENABLE) to out and low"
$CPIN P8_40 low

echo "** VPSB startup script finished **"

exit 0 
