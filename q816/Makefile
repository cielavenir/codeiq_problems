TARGET  := hybridaddition.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): answer.txt answer.src
	rm -f $@
	7z a -tzip -mx=9 $@ $^
