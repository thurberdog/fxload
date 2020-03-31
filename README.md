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
