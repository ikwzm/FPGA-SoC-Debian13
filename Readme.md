FPGA-SoC-Debian13
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Boot Image(U-boot, Kernel, Debian 13 RootFS) for FPGA-SoC.

### Note

**The Linux Kernel Image and Debian12 RootFS provided in this repository is not official.**

**I modified it to my liking. Please handle with care.**


### Features

* Hardware
  + ZYBO    : Xilinx Zynq-7000 ARM/FPGA SoC Trainer Board by Digilent
  + ZYBO-Z7 : Xilinx Zynq-7020 Development Board by Digilent
  + PYNQ-Z1 : Python Productive for Zynq by Digilent
  + DE0-Nano-SoC : Altera SoC FPGA Development Kit by Terasic
  + DE10-Nano    : Altera SoC FPGA Development Kit by Terasic
* U-Boot v2016.03 or v2017.11
  + Build U-Boot v2016.03 for ZYBO, PYNQ-Z1
  + Build U-Boot v2017.11 for ZYBO-Z7, DE0-Nano-SoC, DE10-Nano
  + Customized boot by uEnv.txt
  + Customized boot by boot.scr
  + Enable bootmenu
* Linux Kernel Version v6.12.xx
  + Available in both Xilinx-Zynq-7000 and Altera-SoC in a single image
  + Enable Device Tree Overlay
  + Enable FPGA Manager
  + Enable FPGA Bridge
  + Enable FPGA Reagion
  + Patch for issue #3(USB-HOST does not work with PYNQ-Z1)
* Debian13(trixie) Root File System
  + Installed build-essential
  + Installed device-tree-compiler
  + Installed ruby ruby-msgpack ruby-serialport
  + Installed python python3 python3-numpy msgpack-rpc-python
  + Installed u-boot-tools
  + Installed Other package list -> [files/debian13-dpkg-list.txt](files/debian13-dpkg-list.txt)
* FPGA Device Drivers and Services
  + [dtbocfg    (Device Tree Blob Overlay Configuration File System)](https://github.com/ikwzm/dtbocfg)
  + [fclkcfg    (FPGA Clock Configuration Device Driver)](https://github.com/ikwzm/fclkcfg)
  + [udmabuf    (User space mappable DMA Buffer)](https://github.com/ikwzm/udmabuf)

Release
------------------------------------------------------------------------------------

| Release | Released   | Debian Version | Linux Kernel Version  | Release Tag |
|:--------|:-----------|:---------------|:----------------------|:------------|
| v1.0.0  | 2025-10-30 | Debian 13.1    | 6.12.55-armv7-fpga-1  | [v1.0.0](https://github.com/ikwzm/FPGA-SoC-Debian13/tree/v1.0.0)

Install (v1.0.0)
------------------------------------------------------------------------------------

* Install U-Boot and Linux to SD-Card
  + [ZYBO](doc/install/zynq-zybo.md)
  + [ZYBO-Z7](doc/install/zynq-zybo-z7.md)
  + [PYNQ-Z1](doc/install/zynq-pynqz1.md)
  + [DE0-Nano-SoC](doc/install/de0-nano-soc.md)
  + [DE10-Nano](doc/install/de10-nano.md)
* [Install Device Drivers and Services](doc/install/device-drivers.md)

Build 
------------------------------------------------------------------------------------

* [Build U-boot for ZYBO](doc/build/u-boot-zynq-zybo.md)
* [Build U-boot for ZYBO-Z7](doc/build/u-boot-zynq-zybo-z7.md)
* [Build U-boot for PYNQ-Z1](doc/build/u-boot-zynq-pynqz1.md)
* [Build U-boot for DE0-Nano-SoC](doc/build/u-boot-de0-nano-soc.md)
* [Build U-boot for DE10-Nano](doc/build/u-boot-de10-nano.md)
* [Build Linux Kernel](doc/build/linux-kernel-6.12.55.md)
* [Build Debian13 RootFS](doc/build/debian13-rootfs.md)

Other Projects
------------------------------------------------------------------------------------

* Debian12 Boot Image (U-boot, Linux Kernel 6.1.xx, Debian12 RootFS) for FPGA-SoC
  + https://github.com/ikwzm/FPGA-SoC-Debian12
* Debian9-11 Boot Image (U-boot, Linux Kernel, Debian12 RootFS) for FPGA-SoC
  + https://github.com/ikwzm/FPGA-SoC-Linux
* Linux Kernel (v6.12.x) Image and Device Trees for FPGA-SoC.
  + https://github.com/ikwzm/FPGA-SoC-Linux-Kernel-6.12
* Linux Kernel (v6.1.x) Image and Device Trees for FPGA-SoC.
  + https://github.com/ikwzm/FPGA-SoC-Linux-Kernel-6.1

Examples
------------------------------------------------------------------------------------

* FPGA-SoC-Linux example(1) binary and project and test code
  + https://github.com/ikwzm/FPGA-SoC-Linux-Example-1-ZYBO
  + https://github.com/ikwzm/FPGA-SoC-Linux-Example-1-ZYBO-Z7
  + https://github.com/ikwzm/FPGA-SoC-Linux-Example-1-PYNQ-Z1
  + https://github.com/ikwzm/FPGA-SoC-Linux-Example-1-DE10-Nano
  + https://github.com/ikwzm/FPGA-SoC-Linux-Example-1-DE0-Nano-SoC
* Sample project using BRAM on PL for ZYBO-Z7
  + https://github.com/ikwzm/PLBRAM-ZYBO-Z7
* Quantized Convolution (strip) binary and project and test code
  + https://github.com/ikwzm/QCONV-STRIP-ZYBO-Z7
  + https://github.com/ikwzm/QCONV-STRIP-DE10-Nano