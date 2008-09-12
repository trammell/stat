# $Id$

    GCC = /usr/bin/gcc

help:
	@echo "usage: make [help|clean|so]"

clean:
	rm -f *.o

empty: clean
	rm -f *.dll *.so *.a

so libguile-erf.so: src/erf.c
	$(GCC) -shared -L/usr/lib -lguile -o libguile-erf.so src/erf.c

dll: erf.o
	$(GCC) -shared -fPIC -o cygguile-erf.dll \
	-Wl,--out-implib=libguile-erf.so \
	-Wl,--export-all-symbols \
	-Wl,--enable-auto-import \
	-Wl,--whole-archive erf.o \
	-Wl,--no-whole-archive -lm -lguile

erf.o: src/erf.c
	$(GCC) -c src/erf.c

install: libguile-erf.so cygguile-erf.dll
	cp -a libguile-erf.so /usr/local/lib
	cp -a cygguile-erf.dll /usr/local/lib

g:
	guile

