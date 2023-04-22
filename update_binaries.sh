
#!/bin/sh


ssh -t petalinux@192.168.1.100 "mkdir mount_point"
ssh -t petalinux@192.168.1.100 "sudo mount /dev/mmcblk0p1 mount_point"


scp -r update_binaies petalinux@192.168.1.100:/home/petalinux/mount_point

ssh -t petalinux@192.168.1.100 "sudo umount mount_point"

ssh -t petalinux@192.168.1.100 "sudo /sbin/reboot"


