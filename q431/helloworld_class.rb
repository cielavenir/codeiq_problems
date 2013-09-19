#!/usr/bin/ruby
require :digest.to_s
class Hello;end
class World < Hello
	def initialize
		puts [self.class.superclass,self.class].join(Digest::SHA2.new.size.chr)
	end
end
World.new