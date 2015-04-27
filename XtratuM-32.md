# XtratuM in a 32-bit OS

```sh
sudo apt-get install build-essential
sudo apt-get install libncurses5-dev
sudo apt-get install libxml2-dev
sudo apt-get install makeself
sudo apt-get install xorriso
```

```sh
make menuconfig
make
```

###ERROR

```sh
ia32/linux_boot.c:15:27: fatal error: asm/bootparam.h: No such file or directory
 #include <asm/bootparam.h>
                           ^
compilation terminated.
<builtin>: recipe for target 'ia32/linux_boot.o' failed
make[3]: *** [ia32/linux_boot.o] Error 1
```
