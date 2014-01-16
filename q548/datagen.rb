#!/usr/bin/env ruby
require './detectmusickey.rb'
require 'stringio'
N=200
p N
ret=[]
manual=StringIO.new(<<EOM)
C
C D E F G A B
A B C D E F G A B C
C Cs D E F G A B
C Cs Fs
C Cs
C Cs E
EOM
i=0
manual.each{|line|
	ret<<line.chomp
	i+=1
}
while i<N/2
	t=T.zip(KEY.rotate(rand(12))).select(&:last).map(&:first)
	n=rand(1..30)
	s=n.times.map{t[rand(t.size)]}.shuffle*' '
	raise if solve(s)=='invalid'
	ret<<s
	i+=1
end
while i<N
	n=rand(1..30)
	s=n.times.map{T[rand(T.size)]}.shuffle*' '
	if solve(s)!='invalid' || rand(20)==0
		ret<<s
		i+=1
	end
end
ret.shuffle.each{|e|
	p e.split.size
	puts e
}