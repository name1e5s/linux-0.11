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

# License
The linux kernel is licensed under GPLv2.
