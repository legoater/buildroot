#!/bin/sh

BOARD_DIR=$(dirname "$0")

set -e

if ! grep -q "/dev/sda2" ${TARGET_DIR}/etc/fstab; then
    echo "/dev/sda2 /boot ext2 noauto 0 1" >> ${TARGET_DIR}/etc/fstab
fi

if ! grep -q "debugfs" ${TARGET_DIR}/etc/fstab; then
    echo "debugfs /sys/kernel/debug/ debugfs defaults 0 0" >> ${TARGET_DIR}/etc/fstab
fi

# Too big and unused
rm -f ${TARGET_DIR}/usr/share/qemu/edk2*
rm -f ${TARGET_DIR}/usr/share/qemu/openbios*
rm -f ${TARGET_DIR}/usr/share/qemu/opensbi*
rm -f ${TARGET_DIR}/usr/share/qemu/skiboot*

cp ${BINARIES_DIR}/vmlinux ${TARGET_DIR}/boot

exit 0
