#!/bin/bash

if [[ -z ${PL_XSA_NAME+x} ]]; then
    echo "export the PL_XSA_NAME variable"
    exit 1
fi

if [[ -z ${BSP_FILE_PATH+x} ]]; then
    echo "export the BSP_FILE_PATH variable"
    exit 1
fi

if [[ -z ${PL_XSA_PATH+x} ]]; then
    echo "export the PL_XSA_PATH variable"
    exit 1
fi

mkdir "qpc-"$PL_XSA_NAME

if [ $retVal -ne 0 ]; then
    echo "Error Creating the Petalinux Project directory"
    exit $retVal
fi

echo "Creating the Petalinux Project from BSP:" $BSP_FILE_PATH
petalinux-create -t project -s $BSP_FILE_PATH

retVal=$?

if [ $retVal -ne 0 ]; then
    echo "Error Creating the Petalinux Project from BSP:" $BSP_FILE_PATH
    exit $retVal
fi

cd xilinx-zcu216-2022.1

if [ $retVal -ne 0 ]; then
    echo "Error Creating the Petalinux Project from BSP"
    exit $retVal
fi

echo "Configuring the HW platform from PL bitstream:" $PL_XSA_PATH
petalinux-config --get-hw-description $PL_XSA_PATH --silentconfig

if [ $retVal -ne 0 ]; then
    echo "Configuring the HW platform from PL bitstream:" $PL_XSA_PATH
    exit $retVal
fi

echo "Making the petalinux build"
petalinux-build

if [ $retVal -ne 0 ]; then
    echo "Error Making the petalinux build"
    exit $retVal
fi

petalinux-package --boot --u-boot --fpga --force

if [ $retVal -ne 0 ]; then
    echo "Error creating the petalinux package"
    exit $retVal
fi

# Boot Qemu from Petalinux
# petalinux-boot --qemu --u-boot