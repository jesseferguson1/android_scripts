#!/bin/sh
echo "##################################"
echo "#--------Git-update-menu---------#"
echo "##################################"
echo "#--------------------------------#"
echo "#-1:-device-tree-----------------#"
echo "#-2:-kernel-source---------------#"
echo "#-3:-device-tree-+-kernel-source-#"
echo "##################################"
read choice
if [ "$choice" = "1" ]; then
	# Device tree
	echo "# Device tree #"
	cd device/samsung/kanas3gnfcxx
	git add .
	echo "What do you want as update message?"
	read message
	echo "# Check if this commit tag is correct, if not, Control+C and try again. #"
	echo "$message"
	read nothing
	git commit -m "$message"
	git push https://github.com/tim241/android_device_samsung_kanas3gnfcxx cm-13.0
else if [ "$choice" = "2" ]; then
	# Kernel
	echo "# Kernel Source #"
	cd kernel/samsung/kanas3gnfcxx
	git add .
	echo "What do you want as update message?"
	read message
	echo "# Check if this commit tag is correct, if not, Control+C and try again. #"
	echo "$message"
	read nothing
	git commit -m "$message"
	git push https://github.com/tim241/android_kernel_samsung_kanas3gnfcxx-1 cm-13.0
else if [ "$choice" = "3" ]; then
	# Device tree
	echo "# Device tree #"
	cd device/samsung/kanas3gnfcxx
	git add .
	echo "What do you want as update message?"
	read message
	echo "# Check if this commit tag is correct, if not, Control+C and try again. #"
	echo "$message"
	read nothing
	git commit -m "$message"
	git push https://github.com/tim241/android_device_samsung_kanas3gnfcxx cm-13.0
	# Kernel
	echo "# Kernel Source #"
	cd kernel/samsung/kanas3gnfcxx
	git add .
	echo "What do you want as update message?"
	read message
	echo "$message"
	read nothing
	git commit -m "$message"
	git push https://github.com/tim241/android_kernel_samsung_kanas3gnfcxx-1 cm-13.0
fi
fi
fi
