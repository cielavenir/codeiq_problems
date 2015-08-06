# Description:
#   Intercal生成
#
#   指定された文字列を生成するIntercalプログラムを生成します
#
# Commands:
#   intercal text - textを出力するIntercalプログラムを返す
#
# Author:
#   ciel
require 'stringio'
require 'native'
require 'encoding'

Native(`module`).exports = lambda{|robot|
	Native.call(`robot`,:respond,/codeiq/i){|msg|
		Native.call(`msg`,:send,'CodeIQ')
	}
	Native.call(`robot`,:respond,/intercal (.+)$/i){|msg|
		ret=StringIO.new
		last=0
		txt=Native(`msg.match[1]`).force_encoding('UTF-8')
		txt=txt.each_byte.to_a
		siz=txt.size
		please=(siz+3)/4-2
		ret.puts "DO ,1 <- ##{siz}"
		txt.each.with_index{|e,i|
			c = e
			c = (c & 0x55) << 1 | (c & 0xaa) >> 1
			c = (c & 0x33) << 2 | (c & 0xcc) >> 2
			c = (c & 0x0f) << 4 | (c & 0xf0) >> 4
			last2 = c
			c = (last-c)&0xff
			last = last2
			ret.print 'PLEASE ' if i<=please
			ret.puts "DO ,1 SUB ##{i+1} <- ##{c&0xff}"
		}
		ret.puts 'PLEASE READ OUT ,1'
		ret.print 'PLEASE GIVE UP'
		Native.call(`msg`,:send,ret.string)
	}
}

__END__
Hubot > hubot intercal I ♥ CodeIQ.
Hubot > DO ,1 <- #13
PLEASE DO ,1 SUB #1 <- #110
PLEASE DO ,1 SUB #2 <- #142
PLEASE DO ,1 SUB #3 <- #189
DO ,1 SUB #4 <- #174
DO ,1 SUB #5 <- #244
DO ,1 SUB #6 <- #161
DO ,1 SUB #7 <- #66
DO ,1 SUB #8 <- #204
DO ,1 SUB #9 <- #208
DO ,1 SUB #10 <- #128
DO ,1 SUB #11 <- #20
DO ,1 SUB #12 <- #8
DO ,1 SUB #13 <- #22
PLEASE READ OUT ,1
PLEASE GIVE UP
