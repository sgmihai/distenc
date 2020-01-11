#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling distenc
/usr/bin/as --64 -o /home/sgm/lazproj/distenc/lib/x86_64-linux/distenc.o   /home/sgm/lazproj/distenc/lib/x86_64-linux/distenc.s
if [ $? != 0 ]; then DoExitAsm distenc; fi
rm /home/sgm/lazproj/distenc/lib/x86_64-linux/distenc.s
echo Linking /home/sgm/lazproj/distenc/distenc
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --dynamic-linker=/lib64/ld-linux-x86-64.so.2      -L. -o /home/sgm/lazproj/distenc/distenc -T /home/sgm/lazproj/distenc/link19330.res -e _start
if [ $? != 0 ]; then DoExitLink /home/sgm/lazproj/distenc/distenc; fi
IFS=$OFS
