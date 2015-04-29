# XtratuM


### Package to install

```sh
sudo apt-get install build-essential
sudo apt-get install libncurses5-dev
sudo apt-get install gcc-multilib
sudo dpkg--add-architecture i386
sudo apt-get install libxml2-dev:i386
sudo apt-get install makeself
sudo apt-get install xorriso
```

### Make

```sh
cd /home/username/path_to_xtratum
cp xmconfig.ia32 xmconfig
```

```sh
make menuconfig
#just use the default configuration; press <ESC><ESC><ENTER> * 3
make
make distro-tar
make distro-run
```

>   make clean

```sh
make clean
#or
make distclean
```

### Install SDK

```sh
sudo ./xtratum-2.x.y.run
#set the installation directory to /opt/xm
#others press <ENTER>
```

### Compile Examples

```sh
cd /opt/xm/path_to_examples
cd one_of_the_examples
sudo make
```

-------

>   run and boot from grub

```sh
sudo mkdir /boot/xm
sudo make install
sudo cp 20_linux_xm /etc/grub.d/
sudo chmod +x /etc/grub.d/20_linux_xm
sudo upate-grub
```

please edit **/etc/grub.d/20_linux_xm** and **/boot/grub/grub.cfg** accordingly

if the config slot for xtratum is

```
set root='(hd0,msdos1)'
search --no-floppy --fs-uuid --set=root
```

replace this line with your Linux configuration

```
set root='(hd0,msdosX)' # Pay attention to the X; It's where your /boot located
search --no-floppy --fs-uuid --set=root xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

**DO NOT** run ```update-grub``` after manually updating ```grub.cfg```

-------

>   run in qemu

```sh
sudo make resident_sw.iso
sudo qemu -m 512 -serial stdio -hda resident_sw.iso
```
