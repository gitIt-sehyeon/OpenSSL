CC = gcc
CFLAGS = -Wall -Wextra -g -I"C:/Program Files/OpenSSL-Win64/include"
LDFLAGS = -L"C:/Program Files/OpenSSL-Win64/lib/VC/x64/MDd" -lssl -lcrypto

SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
TARGET = output.exe

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

clean:
	del *.o *.exe
