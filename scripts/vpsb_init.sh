#!/bin/bash

me=$(readlink --canonicalize --no-newline $BASH_SOURCE)
my_dir=$(dirname $me)

echo "I am: $me"
source $my_dir/config.sh

echo "** Running VPSB startup scripts **"

echo "Setting AUX1 to out and low"
$CPIN $VPSB_AUX1 low

echo "Setting AUX2 to out and low"
$CPIN $VPSB_AUX2 low


echo "Setting ENABLE to out and low"
$CPIN $VPSB_ENABLE low

for p in $VPSB_SERIAL_PINS; 
do
	echo "Setting $p to UART mode."
	$CPIN $p uart
done

echo "** VPSB startup script finished **"

exit 0 
