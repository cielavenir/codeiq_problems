#!/usr/bin/env ruby
T=['C','Cs','D','Ds','E','F','Fs','G','Gs','A','As','B']
while gets
	c,n=$_.split.map(&:to_i)
	puts gets.split.map{|e|T[(T.index(e)+c)%12]}*' '
end