#!/bin/sh

BOARD_DIR=$(dirname "$0")

set -e

if ! grep -q "/dev/sda2" ${TARGET_DIR}/etc/fstab; then
    echo "/dev/sda2 /boot ext2 noauto 0 1" >> ${TARGET_DIR}/etc/fstab
fi

if ! grep -q "debugfs" ${TARGET_DIR}/etc/fstab; then
    echo "debugfs /sys/kernel/debug/ debugfs defaults 0 0" >> ${TARGET_DIR}/etc/fstab
fi

exit 0
