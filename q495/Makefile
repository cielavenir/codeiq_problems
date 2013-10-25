SOURCES := .
PRE     := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.pre)))
IN      := $(PRE:.pre=.in)
TARGET  := shortesttrip.zip

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f $(TARGET) #$(IN)

$(TARGET): $(IN) data0.ans
	rm -f $@
	7z a -tzip -mx=9 $@ $^

places.txt:
	ruby placesgen.rb > $@

%.in: %.pre places.txt
	ruby datagen.rb places.txt $< > $@
