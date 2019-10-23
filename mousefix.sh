#!/bin/sh
if grep -q -v 'usbhid.mousepoll' /boot/cmdline.txt ; then
  sudo sed -i.backup '/root/ s/$/ usbhid.mousepoll=0/' /boot/cmdline.txt
else
  echo "Error: usbhid.mousepoll already defined" >&2
  exit 1
fi
