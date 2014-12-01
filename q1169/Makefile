SOURCES := .
IN      := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.in)))
TARGET  := base32.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): sample.in sample.ans check.rb check.conf.sample
	rm -f $@
	7z a -tzip -mx=9 $@ $^
