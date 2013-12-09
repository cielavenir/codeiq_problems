SOURCES := .
IN      := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.in)))
TARGET  := detectmusickey.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): $(IN) sample.ans answer.txt
	rm -f $@
	7z a -tzip -mx=9 $@ $^

%.ans: %.in
	ruby detectmusickey.rb $< > $@
