#!/bin/bash
echo "############################"
echo "# Cyanogenmod build script #"
echo "#  Created by Tim's Tech   #"
echo "############################"
cd /home/tim/android/cm13/

source build/envsetup.sh
echo "############################"
echo "#	     Which device?       #"
echo "############################"
read device
breakfast $device
if [ $? = "0" ]; then
	make bacon
	if [ $? = "0" ]; then
		echo "############################"
		echo "#	     Build Success       #"
		echo "############################"
	else
		echo "############################"
		echo "#	     Build Failed        #"
		echo "############################"
	fi
else 
	echo "############################"
	echo "#	   Breakfast Failed      #"
	echo "############################"
fi
