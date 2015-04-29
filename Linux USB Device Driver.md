# Linux Device Driver

### Makefile
```make
obj-m := usb_test.o

KERNEL_DIR = /lib/modules/$(shell uname -r)/build
PWD = $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules
#	sudo insmod usb_test.ko
#	chmod 666 /dev/skel0
clean:
	rm -rf /home/lu/study/Driver/code/*.o *.ko *.mod.* *.symvers *.order *~
#	sudo rmmod usb_test
```

### Compilation

```sh
sudo make
sudo insmod usb_test.ko
sudo rmmod usb_test
```

### Useful Instruction

>   Package

```sh
sudo apt-get install build-essential linux-headers-`uname -r`
```

>   lsmod

```sh
lsmod | grep usb
```

>   check log

```sh
dmesg
sudo tail -f /var/log/syslog
```

>   Driver localtion

```sh
/lib/modules/3.16.0-0.bpo.4-amd64/kernel/drivers/
```
