Run the emulation with:

qemu-system-ppc -nographic -M sam460ex -kernel vmlinux -device virtio-net-pci,netdev=net0 -netdev user,id=net0 # qemu_ppc_sam460ex_defconfig

The login prompt will appear in the terminal that started Qemu.
