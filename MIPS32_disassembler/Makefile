#
# Makefile for Architecture Project 1
#

CC=cc
# if you want to use debugger, add -g to CFLAGS and LDFLAGS
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=Simple_MIPS_disassembler.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=disasm
INCLUDES=Simple_MIPS_disassembler.h

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

%.o:  %.c  ${INCLUDES}
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
