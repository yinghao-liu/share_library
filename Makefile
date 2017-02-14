all:main slave
main:main.o
slave:slave.o
main.o:main.c
slave.o:slave.c
.PHONY:clean all

clean:
	rm -rf main slave *.o *.a
