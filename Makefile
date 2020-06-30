CC := gcc
plat := x86_64
CFLAGS := -W -Wall -O2 -g
CPPFLAGS := -I.
LDLIBS := -lz 

ifeq ($(plat), hi3559av100)
CC = aarch64-himix100v630r3-linux-gcc
else ifeq ($(plat), hi3516dv300)
CC = arm-himix200v002-linux-gcc
endif

ifneq ($(plat), x86_64)
LDLIBS += -L ./lib/$(plat)
endif

PROGS = mkcramfs cramfsck

all: $(PROGS)
	mkdir -p bin/$(plat)
	mv $(PROGS) bin/$(plat)
distclean clean:
	rm -f $(PROGS)
	rm -f bin/$(plat)/*

.PHONY: all clean
