#!/bin/sh
export KERNEL_PATH=$(dirname `which $0`)

if [ "$1" ] && [ "$1" = "init" ] ; then
    if [ -f $KERNEL_PATH/bochs/hdc-0.11.img.xz ]; then
        [ -d $KERNEL_PATH/bochs/hdc-0.11.img ] && rm -rf $KERNEL_PATH/bochs/hdc-0.11.img
        xz -dk $KERNEL_PATH/bochs/hdc-0.11.img.xz
        echo "Done."
        exit 0
    else
        echo "ERROR: hdc-0.11.img.xz not found"
        exit 1
    fi
fi

bochs -q -f $KERNEL_PATH/bochs/bochsrc.bxrc
