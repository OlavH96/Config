# How to restore bad superblock on drive

1. List drives and devices

    - fdisk -l

2. Find backup superblocks

    - sudo mke2fs -n /dev/<device>

3. Run disk repair with new superblocks

    - sudo fsck -b <backup> /dev/<device>

4. Pray
