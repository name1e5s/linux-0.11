AR  =ar
AS  =as --32
LD  =ld
LDFLAGS =-m elf_i386
CC  =gcc
CFLAGS  =-g -m32 -fno-builtin -fno-stack-protector \
		 -fomit-frame-pointer -fstrength-reduce
CPP =cpp -nostdinc

