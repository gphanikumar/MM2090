CC = g++
CFLAGS = -Wall -std=c++11

# List of all .cpp files in the geometry directory
GEOMETRY_SRCS = $(wildcard geometry/*.cpp)

# List of corresponding object files for geometry
GEOMETRY_OBJS = $(patsubst %.cpp, %.o, $(GEOMETRY_SRCS))

# Object file for main.cpp
MAIN_OBJ = main.o

# Executable name
EXEC = main

# Target to compile and link the executable
$(EXEC): $(GEOMETRY_OBJS) $(MAIN_OBJ)
	$(CC) $(CFLAGS) $^ -o $@

# Generic rule to compile .cpp files into .o files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Target to remove executables and object files
clean:
	rm $(EXEC) $(GEOMETRY_OBJS) $(MAIN_OBJ)

