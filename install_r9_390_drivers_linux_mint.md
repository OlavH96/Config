# How to maybe install amdgpu drivers for R9 390 - Linux Mint 20.1

## View drivers

    inxi -F

## Download latest amdgpu drivers from AMD

https://forums.linuxmint.com/viewtopic.php?t=272074

## Install amdgpu

    ./amdgpu-install

If this fails try the next steps then try again later.

## Vulkan

    sudo add-apt-repository ppa:oibaf/graphics-drivers
    apt update
    apt upgrade
    apt install libvulkan1 mesa-vulkan-drivers vulkan-utils
    vulkaninfo

## Modprobe ?

    modprobe amdgpu

Not sure if this is needed / does anything


## /etc/default/grub

    GRUB_CMDLINE_LINUX_DEFAULT="quiet splash modprobe.blacklist=radeon radeon.cik_support=0 radeon.si_support=0 amdgpu.si_support=1 amdgpu.cik_support=1 amdgpu.dc=1 amdgpu.dpm=1"
    
    sudo update-grub
