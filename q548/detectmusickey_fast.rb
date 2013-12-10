#!/usr/bin/env ruby
T=['C','Cs','D','Ds','E','F','Fs','G','Gs','A','As','B']

class Integer
	def rot12l(i)
		(self<<i) | (self>>(12-i))
	end
end

def solve(s)
	h=0
	s.split.each{|e|h|=1<<T.index(e)}
	a=12.times.select{|i|0b101010110101.rot12l(i)&h==h}.map{|i|T[i]}
	a.empty? ? 'invalid' : a*' '
end

if __FILE__==$0
	#12.times{|i|puts T.rotate(i).zip(key).select(&:last).map(&:first)*' '}
	gets.to_i.times{
		n=gets.to_i #unused
		puts solve(gets.chomp)
	}
end