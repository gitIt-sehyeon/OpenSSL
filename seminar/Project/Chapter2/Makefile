# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -g -I"C:/Program Files/OpenSSL-Win64/include"
LDFLAGS = -L"C:/Program Files/OpenSSL-Win64/lib/VC/x64/MDd"
LDLIBS = -lssl -lcrypto

# Get all .c files in the current directory
CFILES := $(wildcard *.c)

# Convert .c file names to .exe names
EXEFILES := $(CFILES:.c=.exe)

# Default target: build all executables
all: $(EXEFILES)

# Rule to compile each .c file into a separate .exe
%.exe: %.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS) $(LDLIBS)

# Clean up generated files
clean:
	del /Q *.exe *.o
