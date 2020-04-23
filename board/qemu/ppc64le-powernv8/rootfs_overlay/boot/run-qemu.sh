#!/bin/ash

kernel=${1:-"/boot/vmlinux"}
initrd=${2:-"/boot/initrd.img"}

set -x

exec qemu-system-ppc64 -m 1G -M pseries,accel=kvm,kvm-type=HV,cap-cfpc=broken,cap-sbbc=broken,cap-ibs=broken,cap-ccf-assist=off \
	-smp 1 \
	-kernel $kernel -initrd $initrd \
	-append 'console=hvc0' \
	-device virtio-net,netdev=net0,mac=C0:FF:EE:00:00:02 -netdev user,id=net0 \
	-nodefaults -serial mon:stdio
