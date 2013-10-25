#!/usr/bin/ruby
ARGV.each{|e|
	a=IO.readlines(e)
	puts a.size
	puts a
}