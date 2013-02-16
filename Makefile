#

CFLAGS=-Wall -O3 -g
LDFLAGS=-ldvdread
PREFIX=/usr/local

BINS=disc_id filestat play_title title_info ifo_dump

all:	$(BINS)

install:	all
	strip -s $(BINS)
	cp $(BINS) "$(PREFIX)/bin/"

clean:
	rm -f *.o $(BINS)
