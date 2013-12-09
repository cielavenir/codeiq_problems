#!/usr/bin/env ruby
T=['C','Cs','D','Ds','E','F','Fs','G','Gs','A','As','B']
KEY=[true,false,true,false,true,true,false,true,false,true,false,true]
def solve(s)
	h={}
	s.split.each{|e|h[T.index(e)]=1}
	a=12.times.select{|i|
		12.times.all?{|j|
			KEY[j%12] || !h.has_key?((i+j)%12)
		}
	}.map{|i|T[i]}
	a.empty? ? 'invalid' : a*' '
end

if __FILE__==$0
	#12.times{|i|puts T.rotate(i).zip(key).select(&:last).map(&:first)*' '}
	gets.to_i.times{
		n=gets.to_i #unused
		puts solve(gets.chomp)
	}
end