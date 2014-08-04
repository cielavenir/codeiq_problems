#!/usr/bin/ruby
MOD=1000000007
g=Enumerator.new{|y|
	a=1
	b=1
	y<<a
	loop{
		y<<b
		b,a=(a+b)%MOD,b
	}
}
p g.lazy.drop(100000000-1).take(1).first