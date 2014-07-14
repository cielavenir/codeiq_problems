#!/usr/bin/ruby
require 'prime'
p (1..1000).map{|i|
	i.prime_division.reduce(1){|s,(n,p)|s*(n**(p+1)-1)/(n-1)}
}.reduce(:+)