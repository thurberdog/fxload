# fxload

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
  
  
  /sbin/fxload -t fx2 -d 0f44:ef21 -I /usr/local/share/PolhemusUsb/PatriotUSB2.hex -s /usr/local/share/PolhemusUsb/a3load.hex

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

 Patriot HS -- Load FW
ATTR{idVendor}=="0f44", ATTR{idProduct}=="ef21",ACTION=="add", \
RUN+="/sbin/fxload -t fx2 -d 0f44:ef21 -I /usr/local/share/PolhemusUsb/PatriotUSB2.hex -s /usr/local/share/PolhemusUsb/a3load.hex"

 Patriot HS -- Permissions
ATTR{idVendor}=="0f44", ATTR{idProduct}=="ef20",ACTION=="add",MODE="0666"
/usr/local/share/PolhemusUsb/   

#Installing fxload

First download the repo zip and unzip it

Plug G2 SD card into USB reader/writter and insert into PC

Copy files from the unzipped fxload directories to the same directories on the SD card

copy fxload-Master/etc/udev/rules.d/*  to sdcard/etc/udev/rules.d/*

copy fxload-Master/sbin/* to sdcard/sbin/*

copy fxload-Master/usr/local/share/PolhemusUsb/* sdcard/usr/local/share/PolhemusUsb/*

Plug SD card back into G2 and plug Patriot into USB port and power up
