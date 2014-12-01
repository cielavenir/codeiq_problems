#!/usr/bin/ruby
$<.read.each_codepoint{|e|print '\u%04x'%e}