Run the emulation with:

  qemu-system-ppc64 -nographic -vga none -M mac99,via=pmu -cpu 970 -m 1G -kernel output/images/vmlinux -drive file=output/images/rootfs.ext2,format=raw -net nic,model=sungem -net user -append "root=/dev/sda" # qemu_ppc64_mac99_defconfig
