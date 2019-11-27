#!/bin/sh
make clean && make S=gc2053-t21
cp gc2053-t21.bin ~/nfsroot/root-uclibc-t21/system/etc/sensor -vf
md5sum gc2053-t21.bin
