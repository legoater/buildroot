Run the emulation with:

qemu-system-ppc -nographic -M ref405ep -kernel ./cuImage.hotfoot.elf -initrd rootfs.cpio -serial null -net nic,addr=3 -net user -serial mon:stdio -nodefaults # qemu_ppc_ref405ep_defconfig

The login prompt will appear in the terminal that started Qemu.
