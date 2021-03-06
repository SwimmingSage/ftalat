CC=gcc
CFLAGS=-O3 -std=gnu89 -g -march=native -Wall -Wextra
LDFLAGS=

.PHONY: all trace doc clean

all:
	$(CC) $(CFLAGS) $(LDFLAGS) main.c loop.c CoreRelation.c FreqGetter.c FreqSetter.c measure.c utils.c ConfInterval.c -o ftalat -lm -pthread

trace:
	$(CC) $(CFLAGS) $(LDFLAGS) -D_DUMP main.c loop.c dumpResults.c CoreRelation.c FreqGetter.c FreqSetter.c measure.c utils.c ConfInterval.c -o ftalat -lm -pthread

doc:
	doxygen ./ftalat.doxy

clean:
	rm -f ./ftalat
