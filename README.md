# fxload

http://linux-hotplug.sourceforge.net

About Hotplugging
Starting with kernel 2.4 (in January 2001), hotplugging became a standard feature of GNU/Linux. It's been backported to kernel 2.2 (for USB), and kernel 2.6 makes it available to all sysfs-adapted busses and driver classes.

Hotplug lets you plug in new devices and use them immediately. That means that users won't need to learn so much system administration; systems will at least partially autoconfigure themselves. Initially, hotplug included support for USB and PCI (Cardbus) devices, and could automatically configure some common network interfaces. Updated versions include IEEE 1394 (Firewire/i.Link) support and can download firmware to USB devices that need it. On mainframes, S/390 channel devices uses hotplugging to report device attach and other state change events. For laptops, newer kernels also include support for reporting docking station activity.

In the Linux 2.6 kernel, hotplugging has been integrated with the driver model core so that any bus or class can report hotplug events when devices are added or removed. Quite a few subsystems now support hotplugging; the list at this site is not currently exhaustive. There's work afoot to improve the situations for hotplugging many kinds of devices, including things like disks, power supplies (many newer UPSes are usb-programmable), input devices, and even more. In particular, udev builds on hotplug, to help make sure your /dev/... directory matches the devices actually present on your system. Now would be a good time to help integrate support for your favorite devices!

Basic hotplug support is included in almost all current distributions of GNU/Linux, including RedHat, Debian, and United Linux. A number of separate packages bundle their own add-ons, to automate things like firmware downloading and desktop integration.

Cross compiled for embedded linux

Usage: fxload [-v] [-V] [-t type] [-d vid:pid] [-p bus,addr] [-s loader] -i firmware

  -i <path>       -- Firmware to upload
  
  -s <path>       -- Second stage loader
  
  -t <type>       -- Target type: an21, fx, fx2, fx2lp, fx3
  
  -d <vid:pid>    -- Target device, as an USB VID:PID
  
  -p <bus,addr>   -- Target device, as a libusb bus number and device address path
  
  -v              -- Increase verbosity

  -q              -- Decrease verbosity (silent mode)
  
  -V              -- Print program version
  
   fxload -t fx2 -d 0f44:ef21 -I /usr/local/share/PolhemusUsb/PatriotUSB2.hex -s /usr/local/share/PolhemusUsb/a3load.hex

microcontroller type: fx2

/usr/local/share/PolhemusUsb/PatriotUSB2.hex: type Intel HEX

/usr/local/share/PolhemusUsb/a3load.hex: type Intel HEX

stop CPU

... WROTE: 775 bytes, 10 segments, avg 77

reset CPU

2nd stage: write external memory

stop CPU

2nd stage: write on-chip memory

... WROTE: 3027 bytes, 45 segments, avg 67

reset CPU

Now firmware is functional

Key files in loading the Patriot 

/sbin/fxload -- cross compiled for ARM binary executable

 /etc/udev/rules.d/90-Polhemus_trkr.rules  -- script to run fxload when USB device is plugged in


# Installing fxload

First download the repo zip and unzip it

Plug G2 SD card into USB reader/writter and insert into PC

Copy files from the unzipped fxload directories to the same directories on the SD card

copy fxload-Master/etc/udev/rules.d/*  to sdcard/etc/udev/rules.d/*

copy fxload-Master/sbin/* to sdcard/sbin/*

copy fxload-Master/usr/local/share/PolhemusUsb/* sdcard/usr/local/share/PolhemusUsb/*

Plug SD card back into G2 and plug Patriot into USB port and power up
