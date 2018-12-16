#!/bin/bash

source `dirname $0`/config.sh
if [ `basename $0` == 'vpsb_enable.sh' ];
then
	echo "VPSB: Enabling output"
	$CPIN $VPSB_ENABLE high
else
	echo "VPSB: Disable output"
	$CPIN $VPSB_ENABLE low
fi;
