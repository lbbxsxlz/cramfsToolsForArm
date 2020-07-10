CC := gcc
HOST := x86_64
CFLAGS := -W -Wall -O2 -g
CPPFLAGS := -I.
LDLIBS := -lz 

ifneq ($(HOST), x86_64)
CC = $(HOST)-gcc
LDLIBS += -L ./lib/$(HOST)
endif

PROGS = mkcramfs cramfsck

all: $(PROGS)
	mkdir -p bin/$(HOST)
	mv $(PROGS) bin/$(HOST)
distclean clean:
	rm -f $(PROGS)
	rm -f bin/$(HOST)/*

.PHONY: all clean
