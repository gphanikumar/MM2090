ifeq "$(MYMC)" "Laptop"
	CC=gcc
endif

ifeq "$(MYMC)" "Aqua"
	CC=icc
endif

CFLAGS = -g3 -ggdb -0
BACKUPLOC = /home/abhigyan/Code/Backup

default: main.o qarray.o qtree.o user.o
	$(CC) $(CFLAGS)  main.o qarray.o qtree.o user.o qtree.o

main.o: main.cpp protos.hpp
	$(CC) $(CFLAGS) -c main.cpp -o main.o

qarray.o: qarray.cpp qarray.hpp
	$(CC) $(CFLAGS) -c qarray.cpp -o qarray.o

qtree.o: qtree.cpp qtree.hpp
	$(CC) $(CFLAGS) -c qtree.cpp -o qtree.o

user.o: user.cpp user.hpp
	$(CC) $(CFLAGS) -c user.cpp -o user.o

clean:
	/bin/rm -f *.o qtree.e

install:
	mv qtree.e ../run/qtree.e

tar:
	tar -cvf codebackup.tar main.cpp qtree.cpp qarray.cpp user.cpp
	/bin/mv codebackup.tar $(BACKUPLOC)
