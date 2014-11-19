SOURCES := .
IN      := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.in)))
TARGET  := colorspace.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): $(IN) sample.ans answer.txt check.rb
	rm -f $@
	7z a -tzip -mx=9 $@ $^

%.ans: %.in
	ruby colorspace.rb $< > $@
