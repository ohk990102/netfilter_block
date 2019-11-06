CFLAGS =
LDLIBS = -lnetfilter_queue
TARGET = netfilter_block

all: $(TARGET)

debug: CFLAGS += -DDEBUG -g
debug: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) -o $@ $< $(LDLIBS) $(CFLAGS)
