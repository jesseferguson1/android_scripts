#!/bin/bash
echo "############################"
echo "#-Cyanogenmod-build-script-#"
echo "#---Created-by-Tim's-Tech--#"
echo "############################"
cd /home/tim/android/cm13/
source build/envsetup.sh
if [ $? = "0" ]; then
	echo "############################"
	echo "#------Source-Success------#"
	echo "############################"
else
	echo "############################"
	echo "#------Source-Failed-------#"
	echo "############################"
fi
echo "############################"
echo "#--Retrieving-processors---#"
echo "############################"
sudo cat /proc/cpuinfo | grep processor | wc -l >/dev/null
# Code doesn't work yet.. Work in progress
if [ $? = "0" ]; then
	echo "$(sudo cat /proc/cpuinfo | grep processor | wc -l) processors"
	echo "############################"
	echo "#----Processor-Count * 2---#"
	echo "############################"
	threads=$(($(sudo cat /proc/cpuinfo | grep processor | wc -l) * 2))
	echo "$threads threads"
else 
	echo "##################################"
	echo "#--Retrieving-processors-Failed--#"
	echo "##################################"
	echo "#--Threads-are-falling-back-to-1-#"
	echo "##################################"
	threads="1"
	
fi
# End of non-working code
if [ "$cm_device" = "" ]; then
	echo "############################"
	echo "#------Which-device?-------#"
	echo "############################"
	read cm_device
fi
echo "############################"
echo "#---Executing-Breakfast----#"
echo "############################"
breakfast $cm_device
if [ $? = "0" ]; then
	echo "############################"
	echo "#-------Start-Build--------#"
	echo "############################"
	make bacon -j$threads
	if [ $? = "0" ]; then
		echo "############################"
		echo "#------Build-Success-------#"
		echo "############################"
	else
		echo "############################"
		echo "#------Build-Failed--------#"
		echo "############################"
	fi
else 
	echo "############################"
	echo "#----Breakfast-Failed------#"
	echo "############################"
fi
