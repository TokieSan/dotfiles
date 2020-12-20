# clone
# dd if=/dev/input/DEVICE-HERE of=/dev/OUTPUT/DEVICE-HERE bs=64K conv=noerror,sync
# dd if=/dev/sdc1 of=/dev/sdd1 bs=128K conv=noerror,sync

# make disk img
# dd if=/dev/da0 conv=sync,noerror bs=128K | gzip -c > centos-core-7.gz

# restore disk img
# gunzip -c IMAGE.HERE-GZ | dd of=/dev/OUTPUT/DEVICE-HERE

