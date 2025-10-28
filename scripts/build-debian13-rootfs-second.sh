
##### Run debootstrap second stage

distro=trixie
export LANG=C
/debootstrap/debootstrap --second-stage

##### Setup APT

cat <<EOT > /etc/apt/apt.conf.d/71-no-recommends
APT::Install-Recommends "0";
APT::Install-Suggests   "0";
EOT

apt update -y
apt upgrade -y

##### Install Core applications

apt install -y locales dialog
dpkg-reconfigure locales
apt install -y net-tools openssh-server resolvconf sudo less hwinfo tcsh zsh file wget chrony

##### Setup hostname

echo "debian-fpga" > /etc/hostname

##### Set root password

echo Set root password. please input "admin"
passwd

cat <<EOT >> /etc/securetty
# Serial Port for Xilinx Zynq
ttyPS0
EOT

##### Add fpga user

echo Add fpga user. please input "fpga"
adduser fpga
apt install -y sudo
echo "fpga ALL=(ALL:ALL) ALL" > /etc/sudoers.d/fpga

##### Setup sshd config

apt install -y ssh
sed -i -e 's/#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config

##### Setup Time Zone

dpkg-reconfigure tzdata

##### Setup fstab

cat <<EOT > /etc/fstab
none		/config		configfs	defaults	0	0
EOT

##### Setup Network

apt install -y ifupdown
cat <<EOT > /etc/network/interfaces.d/eth0
allow-hotplug eth0
iface eth0 inet dhcp
EOT

##### Setup /lib/firmware

mkdir /lib/firmware

##### Install Wireless tools and firmware

apt install -y wireless-tools
apt install -y wpasupplicant
apt install -y firmware-realtek
apt install -y firmware-ralink

##### Install Development applications

apt install -y build-essential
apt install -y git git-lfs
apt install -y u-boot-tools device-tree-compiler
apt install -y libssl-dev
apt install -y socat
apt install -y ruby rake ruby-msgpack ruby-serialport 
apt install -y python3 python3-dev python3-setuptools python3-wheel python3-pip python3-numpy
apt install -y flex bison pkg-config
apt install -y file dosfstools

##### Install Other applications

apt install -y samba
apt install -y avahi-daemon

##### Install Linux Modules

mkdir /mnt/boot
dpkg -i linux-image-*.deb

##### Clean Cache

apt clean

##### Create Debian Package List

dpkg -l > dpkg-list.txt
