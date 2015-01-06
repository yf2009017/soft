# parallel make

CC=mpicc
CXX=mpicxx
OPTFLAGS = -O3
CFLAGS = $(OPTFLAGS) -g
CXXFLAGS = $(OPTFLAGS) -g
#CCFLAGS=-fopenmp

.SUFFIXES: .c
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
#INCLUDES = $(SRC:.c=.h)
INCLUDES = ./
# Default target
OUTPUTFILE = Test

.PHONY: all
all: $(OUTPUTFILE)

$(OUTPUTFILE): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -I$(INCLUDES) -o $@ 
#.c.o:
#	$(CC) -c $< -o $@

clean:
	rm -f $(OBJ) $(OUTPUTFILE)

