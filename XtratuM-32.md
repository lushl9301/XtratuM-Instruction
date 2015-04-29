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

> Solution

```sh
sudo apt-get install gcc-multilib
sudo make clean
make
```

###Example has ERROR

```sh
/opt/xm-sdk/xm/bin/xmcparser -s /opt/xm-sdk/xm/user/tools/xmcparser/xmc.xsd -o xm_cf.c.xmc xm_cf.ia32.xml
/opt/xm-sdk/xal/common/rules.mk:86: recipe for target 'xm_cf.c.xmc' failed
make: *** [xm_cf.c.xmc] Segmentation fault

```

> Solution

```sh
mv /opt/xm-sdk/xm/bin/xmcparser /opt/xm-sdk/xm/bin/xmcparser.b
cp /opt/xm-sdk-240/xm/bin/xmcparser /opt/xm-sdk/xm/bin/xmcparser
```
