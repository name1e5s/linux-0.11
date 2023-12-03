# linux-0.11
A slightly modeified version of linux-0.11 that can be built with gcc 5/6/7/8 series.

# Usage
To run the kernel, you should install the packages by the following instruction(on Ubuntu):
```
sudo apt install build-essential gcc-multilib bin86 as86 bochs bochs-x
```

Then prepare the work space:
```
./run.sh init
```

And build the kernel:
```
make
```

To boot the kernel, type:
```
./run.sh
```

# Notes for Ubuntu 22.04 and later

Ubuntu 22.04 and later has removed as86 as a sperate package, so you should install the package `bin86` instead. The full command is:
```
sudo apt install build-essential gcc-multilib bin86 bochs bochs-x
```

bochs on Ubuntu 22.04 and later has a bug in the `latest` BIOS, so you should use the `legacy` BIOS instead. To do this, you should modify the file `bochs/bochsrc.bxrc` and change the line:
```
romimage: file=/usr/share/bochs/BIOS-bochs-latest
```
to
```
romimage: file=/usr/share/bochs/BIOS-bochs-legacy
```
Then the kernel can be booted as expected.

# License
The linux kernel is licensed under GPLv2.
