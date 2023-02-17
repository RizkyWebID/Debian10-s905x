#!/bin/bash

tanggal=$(date +"%m-%d-%Y")

waktu=$(date +"%T")

echo "Server telah berhasil di Reboot pada Pukul $waktu WIB, Tanggal $tanggal." >> /root/reboot.txt

/sbin/shutdown -r now

