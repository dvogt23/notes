# Make

CFLAGS += -Wall -Wextra
LDLIBS = -lcurses
OBJS = foo.o bar.o baz.o

foo: $(OBJS)
    $(CC) $(LDFLAGS) $(OBJS) $(LDLIBS) -o $@

    foo.o bar.o: foo.h

clean:
    rm -f $(OBJS) foo
