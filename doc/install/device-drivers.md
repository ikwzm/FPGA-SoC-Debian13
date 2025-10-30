### Install Device Drivers and Services

#### Boot ZYBO/ZYBO-Z7/PYNQ-Z1/DE0-Nano-SoC/DE10-Nano and login fpga or root user

fpga'password is "fpga".

```console
debian-fpga login: fpga
Password:
fpga@debian-fpga:~$
```

root'password is "admin".

```console
debian-fpga login: root
Password:
root@debian-fpga:~#
```

#### Install Kernel Image Package

Since linux-image-6.12.55-armv7-fpga_6.12.55-armv7-fpga-1_armhf.deb is already pre-installed in debian12-rootfs-vanilla, this The process can be omitted.

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i linux-image-6.12.55-armv7-fpga_6.12.55-armv7-fpga-1_armhf.deb
Selecting previously unselected package linux-image-6.12.55-armv7-fpga.
(Reading database ... 30216 files and directories currently installed.)
Preparing to unpack linux-image-6.12.55-armv7-fpga_6.12.55-armv7-fpga-2_armhf.deb ...
Unpacking linux-image-6.12.55-armv7-fpga (6.12.55-armv7-fpga-2) over (6.12.55-armv7-fpga-2) ...
Setting up linux-image-6.12.55-armv7-fpga (6.12.55-armv7-fpga-2) ...
```

#### Install Kernel Header Packages

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i linux-headers-6.12.55-armv7-fpga_6.12.55-armv7-fpga-1_armhf.deb
Selecting previously unselected package linux-headers-6.12.55-armv7-fpga.
(Reading database ... 30216 files and directories currently installed.)
Preparing to unpack linux-headers-6.12.55-armv7-fpga_6.12.55-armv7-fpga-2_armhf.deb ...
Unpacking linux-headers-6.12.55-armv7-fpga (6.12.55-armv7-fpga-2) ...
Setting up linux-headers-6.12.55-armv7-fpga (6.12.55-armv7-fpga-2) ...
make: Entering directory '/usr/src/linux-headers-6.12.55-armv7-fpga'
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  HOSTCC  scripts/dtc/libfdt/fdt.o
  HOSTCC  scripts/dtc/libfdt/fdt_ro.o
  HOSTCC  scripts/dtc/libfdt/fdt_wip.o
  HOSTCC  scripts/dtc/libfdt/fdt_sw.o
  HOSTCC  scripts/dtc/libfdt/fdt_rw.o
  HOSTCC  scripts/dtc/libfdt/fdt_strerror.o
  HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
  HOSTCC  scripts/dtc/libfdt/fdt_addresses.o
  HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
  HOSTCC  scripts/dtc/fdtoverlay.o
  HOSTLD  scripts/dtc/fdtoverlay
  HOSTCC  scripts/genksyms/genksyms.o
  HOSTCC  scripts/genksyms/parse.tab.o
  HOSTCC  scripts/genksyms/lex.lex.o
  HOSTLD  scripts/genksyms/genksyms
  HOSTCC  scripts/kallsyms
  HOSTCC  scripts/sorttable
  HOSTCC  scripts/asn1_compiler
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/mod/modpost.o
  CC      scripts/mod/devicetable-offsets.s
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTCC  scripts/mod/symsearch.o
  HOSTLD  scripts/mod/modpost
make: Leaving directory '/usr/src/linux-headers-6.12.55-armv7-fpga'
```


#### Install dtbocfg kernel module package

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i dtbocfg-6.12.55-armv7-fpga_0.1.0-1_armhf.deb
Selecting previously unselected package dtbocfg-6.12.55-armv7-fpga.
(Reading database ... 47832 files and directories currently installed.)
Preparing to unpack dtbocfg-6.12.55-armv7-fpga_0.1.0-1_armhf.deb ...
Unpacking dtbocfg-6.12.55-armv7-fpga (0.1.0-1) ...
Setting up dtbocfg-6.12.55-armv7-fpga (0.1.0-1) ...
```

#### Install fclkcfg kernel module package

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i fclkcfg-6.12.55-armv7-fpga_1.9.0-1_armhf.deb
Selecting previously unselected package fclkcfg-6.12.55-armv7-fpga.
(Reading database ... 47838 files and directories currently installed.)
Preparing to unpack fclkcfg-6.12.55-armv7-fpga_1.9.0-1_armhf.deb ...
Unpacking fclkcfg-6.12.55-armv7-fpga (1.9.0-1) ...
Setting up fclkcfg-6.12.55-armv7-fpga (1.9.0-1) ...
```

#### Install u-dma-buf kernel module package

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i u-dma-buf-6.12.55-armv7-fpga_5.3.0-0_armhf.deb
Selecting previously unselected package u-dma-buf-6.12.55-armv7-fpga.
(Reading database ... 47843 files and directories currently installed.)
Preparing to unpack u-dma-buf-6.12.55-armv7-fpga_5.3.0-0_armhf.deb ...
Unpacking u-dma-buf-6.12.55-armv7-fpga (5.3.0-0) ...
Setting up u-dma-buf-6.12.55-armv7-fpga (5.3.0-0) ...
```

#### Install zynq-afi kernel module package

This debian package only installs ZYNQ(ZYBO/ZYBO-Z7/PYNQ-Z1).

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i zynq-afi-6.12.55-armv7-fpga_0.0.1-0_armhf.deb
Selecting previously unselected package zynq-afi-6.12.55-armv7-fpga.
(Reading database ... 95722 files and directories currently installed.)
Preparing to unpack zynq-afi-6.12.55-armv7-fpga_0.0.1-0_armhf.deb ...
Unpacking zynq-afi-6.12.55-armv7-fpga (0.0.1-0) ...
Setting up zynq-afi-6.12.55-armv7-fpga (0.0.1-0) ...
```

#### Install dtbocfg control package

```console
fpga@debian-fpga:~/debian$ sudo dpkg -i dtbocfg-ctrl_0.0.5-1_all.deb
Selecting previously unselected package dtbocfg-ctrl.
(Reading database ... 47849 files and directories currently installed.)
Preparing to unpack dtbocfg-ctrl_0.0.5-1_all.deb ...
Unpacking dtbocfg-ctrl (0.0.5-1) ...
Setting up dtbocfg-ctrl (0.0.5-1) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/device-tree-overlay.service' → '/etc/systemd/system/device-tree-overlay.service'.
[  861.645000] dtbocfg: loading out-of-tree module taints kernel.
[  861.651325] dtbocfg: 0.1.0
[  861.654114] dtbocfg: OK
```

#### Check Installed Device Drivers and Services Package

```console
fpga@debian-fpga:~$ sudo lsmod
Module                  Size  Used by
dtbocfg                16384  0
```

```console
fpga@debian-fpga:~/debian$ sudo systemctl status device-tree-overlay.service --no-pager -l
● device-tree-overlay.service - Device Tree Overlay Service.
     Loaded: loaded (/etc/systemd/system/device-tree-overlay.service; enabled; preset: enabled)
     Active: active (exited) since Tue 2025-10-28 14:20:43 JST; 1min 15s ago
 Invocation: 8e0e4cb213204cfdb19d6227173e38c1
    Process: 4732 ExecStart=/sbin/modprobe dtbocfg (code=exited, status=0/SUCCESS)
   Main PID: 4732 (code=exited, status=0/SUCCESS)
        CPU: 80ms

Oct 28 14:20:43 debian-fpga systemd[1]: Starting device-tree-overlay.service - Device Tree Overlay Service....
Oct 28 14:20:43 debian-fpga systemd[1]: Finished device-tree-overlay.service - Device Tree Overlay Service..
```

