CC = gcc
CFLAGS = -Wall -Wextra -O2
FRAMEWORKS:= -framework Foundation -framework AppKit
SOURCE = img-paste.m
EXECUTABLE = img-paste

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCE)
	$(CC) $(CFLAGS) $(FRAMEWORKS) -o $(EXECUTABLE) $(SOURCE)

clean:
	rm $(EXECUTABLE)
