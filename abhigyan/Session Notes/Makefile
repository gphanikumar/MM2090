# ---------------------------------------------
# MM2090 : Introduction to Scientific Computing
# Author: Gandham Phanikumar
# Example code to try out "make"
# Makefile contains the makefile commands
# ---------------------------------------------
cc = g++
CC = g++
CFLAGS = -g3 -ggdb -O 

# Modify the following paths to suit your machine
CODEBASE=/ehome/gphani/Courses/MM2090/qtree
INSTALLDIR=$(CODEBASE)/run
BACKUPDIR=$(CODEBASE)/backup

default: main.o qarray.o qtree.o user.o
	$(cc) $(CFLAGS) main.o qarray.o qtree.o user.o -o qtree.e

main.o: main.cpp protos.hpp
	$(cc) $(CFLAGS) -c main.cpp -o main.o
	
qarray.o: qarray.cpp qarray.hpp
	$(cc) $(CFLAGS) -c qarray.cpp -o qarray.o

qtree.o: qtree.cpp qtree.hpp
	$(cc) $(CFLAGS) -c qtree.cpp -o qtree.o

user.o: user.cpp user.hpp
	$(cc) $(CFLAGS) -c user.cpp -o user.o

install:
	/bin/mv qtree.e $(INSTALLDIR)

clean:
	/bin/rm -f *.o qtree.e *.gch

DATESTAMP:=$(shell date +"%Y-%m-%d")
TARBALL=codebackup_$(DATESTAMP).tar

tar:
	# ------- making a tarball ------------
	@echo "Backing up with datestamp: $(DATESTAMP)";
	@echo "Tarball name: $(TARBALL)";
	tar -cvf $(TARBALL) *.cpp *.hpp readme.txt Makefile
	@ls -l $(TARBALL)
	/bin/mv $(TARBALL) $(BACKUPDIR)
	# ------- done moving tarball ------------

# ------------ end of Makefile ----------------
