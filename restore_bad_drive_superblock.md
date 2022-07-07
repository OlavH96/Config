# How to restore bad superblock on drive

1. List drives and devices

    - fdisk -l

2. Find backup superblocks (**remember the -n unless you wanna wipe your drive**)

    - sudo mke2fs -n /dev/device

3. Run disk repair with new superblocks

    - sudo fsck -b backup-number /dev/device

4. Pray
