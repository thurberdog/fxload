# fxload

Cross compile for embedded linux

/sbin/fxload -t fx2 -D /dev/bus/usb/001/002 -I /usr/local/share/PolhemusUsb/PatriotUSB2.hex -s /usr/local/share/PolhemusUsb/a3load.hex

currently failing

appears to be a options change before this release

Usage: fxload [-v] [-V] [-t type] [-d vid:pid] [-p bus,addr] [-s loader] -i firmware

  -i <path>       -- Firmware to upload
  
  -s <path>       -- Second stage loader
  
  -t <type>       -- Target type: an21, fx, fx2, fx2lp, fx3
  
  -d <vid:pid>    -- Target device, as an USB VID:PID
  
  -p <bus,addr>   -- Target device, as a libusb bus number and device address path
  
    -v              -- Increase verbosity

  -q              -- Decrease verbosity (silent mode)
  
  -V              -- Print program version
  
  Believe needs to be changed from -D to -d as follows
  /sbin/fxload -t fx2 -d 0f44:ef21 -I /usr/local/share/PolhemusUsb/PatriotUSB2.hex -s /usr/local/share/PolhemusUsb/a3load.hex
  
