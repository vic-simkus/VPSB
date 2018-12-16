#!/bin/bash

source `dirname $0`/config.sh

echo "** Running VPSB startup scripts **"

echo "Setting AUX1 to out and low"
$CPIN $VPSB_AUX1 low

echo "Setting AUX2 to out and low"
$CPIN $VPSB_AUX2 low


echo "Setting ENABLE to out and low"
$CPIN $VPSB_ENABLE low

echo "** VPSB startup script finished **"

exit 0 
