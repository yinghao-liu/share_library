all: libslave.so main libslave.a
libslave.a:slave.o
	ar rs libslave.a slave.o
libslave.so:slave.o
	cc -shared -o libslave.so slave.o
main:main.o
slave:slave.o
main.o:main.c
slave.o:slave.c
	cc -fpic -c -o slave.o slave.c

.PHONY:clean all

clean:
	rm -rf main slave *.*o *.a
