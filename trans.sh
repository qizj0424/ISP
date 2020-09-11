#!/bin/sh
####Select the sensor####
SENSOR="jxf37-t21"
#####NFS OR TFTP##Choose the upload method#
TOOL="NFS"
NFS_MY_PATH=/home/zjqi/nfsroot/mnt
NFS_WORK_PATH=/home/zjqi/net/nfsroot
TFTP_MY_PATH=/home/zjqi/tftproot/
TFTP_WORK_PATH=/home/zjqi/net/tftproot

make clean && make S=${SENSOR}
cp ${SENSOR}.bin ${TFTP_MY_PATH}/ -vf 

md5sum ${SENSOR}.bin
