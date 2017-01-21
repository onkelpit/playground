CC = g++
OBJECTS = test.o
LIBS =
CFLAGS = -Wall -O2
BINDIR = $(DESTDIR)/usr/bin
NAME = test42

test: $(OBJECTS)
    $(CC) -o $(NAME) $(OBJECTS) $(LIBS)

%.o: %.c
    $(CC) -c $(CFLAGS) $<

install:
    install --mode=755 $(NAME) $(BINDIR)/

clean:
    rm *.o $(NAME)

uninstall:
    rm $(BINDIR)/$(NAME)
