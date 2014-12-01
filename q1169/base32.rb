#!/usr/bin/ruby
class TrueClass
	def to_i() 1 end
end
class FalseClass
	def to_i() 0 end
end

def shl(x,n)
	n.times{x*=2}
	x
end
def shr(x,n)
	n.times{x/=2}
	x
end

t=[
	65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
	75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
	85, 86, 87, 88, 89, 90, 50, 51, 52, 53,
	54, 55,
]
b=x=0
ARGF.read.each_byte{|c|
	break if c==61
	c-=0x20 if (c/97!=0).to_i*(c/123==0).to_i==1
	if p=t.index(c)
		x=shl(x,5)+p
		b+=5
		if b/8!=0
			b-=8
			r=shr(x,b)
			putc(r)
			x-=shl(r,b)
		end
	end
}
while b/8!=0
	b-=8
	putc(shr(x,b)%256)
end