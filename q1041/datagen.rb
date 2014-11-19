#!/usr/bin/ruby
require './colorspace.rb'
100.times{|i|
	puts '>sequence%02d'%i
	puts base2color(80.times.map{'ACGT'.split('').sample}*'')
}
