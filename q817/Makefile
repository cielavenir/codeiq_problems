TARGET  := spotmistake.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): input.txt output.txt spotmistake_wrong.cpp
	rm -f $@
	7z a -tzip -mx=9 $@ $^
