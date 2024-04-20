#!/system/bin/sh

FD=$2
ZIP=$3
ui_print() {
  echo -n -e "ui_print $1\n" > /proc/self/fd/$FD
  echo -n -e "ui_print\n" > /proc/self/fd/$FD
}

# Mount point
SYSTEM="/system_root";
VENDOR="/vendor";
PRODUCT="/product";
SYSTEM_EXT="/system-ext";

# Mounting
sleep 1;
if [ -d $SYSTEM ]; then
	ui_print "Mounting system...";
	ui_print " ";
	mount -t auto /dev/block/mapper/system $SYSTEM
	mount -o rw,remount $SYSTEM
fi;
#
sleep 1;
if [ -d $VENDOR ]; then
	ui_print "Mounting vendor...";
	ui_print " ";
	mount -t auto /dev/block/mapper/vendor $VENDOR
	mount -o rw,remount $VENDOR
fi;
#
sleep 1;
if [ -d $PRODUCT ]; then
	ui_print "Mounting product...";
	ui_print " ";
	mount -t auto /dev/block/mapper/product $PRODUCT
	mount -o rw,remount $PRODUCT
fi;
#
sleep 1;
if [ -d $SYSTEM_EXT ]; then
	ui_print "Mounting system-ext...";
	ui_print " ";
	mount -t auto /dev/block/mapper/system-ext $SYSTEM_EXT
	mount -o rw,remount $SYSTEM_EXT
fi;
