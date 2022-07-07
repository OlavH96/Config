# How to restore bad superblock on drive

1. List drives and devices

    - fdisk -l

2. Find backup superblocks

    - sudo mke2fs -n /dev/sdb1

3. Run disk repair with new superblocks

    - fsck -b 32768 /dev/sda2

4. Pray
