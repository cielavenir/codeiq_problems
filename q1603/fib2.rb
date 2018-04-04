Zero=[].size
One=[[]].size
Two=One<<One
Three=Two|One
Four=Two<<One
Five=Four|One
Six=Four|Two
Seven=Four|Two|One
Eight=Four<<One
Nine=Eight|One
Ten=Eight|Two
ADDMSK=(One<<Six).times.reduce(Zero){|s,i|(s<<One)|One}

def add(a,b)
return a+b
if true
	while b!=Zero
		c=(a&b)<<One
		a^=b
		b=c&ADDMSK
	end
else
	bchk=b
	msk=One
	c=Zero
	while (bchk|c)!=Zero
		cx=((a&b&msk)^(b&c)^(c&a))
		a^=(b&msk)^c
		c=cx
		c<<=One
		msk<<=One
		bchk>>=One
		c&=ADDMSK
	end
end
	a
end
def sub(a,b)
	add(~add(~Zero,b),a)
end

Mo=One|Two|Four|One<<Nine|One<<add(One,Ten)|One<<add(Four,Ten)|One<<add(Five,Ten)|One<<add(Seven,Ten)|One<<add(Nine,Ten)|One<<add(Ten,Ten)|One<<add(add(Three,Ten),Ten)|One<<add(add(Four,Ten),Ten)|One<<add(add(Five,Ten),Ten)|One<<add(add(Seven,Ten),Ten)|One<<add(add(Eight,Ten),Ten)|One<<add(add(Nine,Ten),Ten)

def mul(a,b)
	ret=Zero
	while b>Zero
		ret=add(ret,a) if (b&One)>Zero
		a=add(a,a)
		b>>=One
	end
	ret
end

def div(a,b)
	ret=Zero
	while a>=b
		i=Zero
		while a>=b<<i
			i=add(i,One)
		end
		i=sub(i,One)
		a=sub(a,b<<i)
		ret|=One<<i
	end
	ret
end

def mod(a,b)
	sub(a,mul(div(a,b),b))
end

def M(x,y)
	a=Zero;b=One;c=Two;d=Three;e=Four
	[
		mod(add(mul(x[a],y[a]),mul(x[b],y[c])),Mo),
		mod(add(mul(x[a],y[b]),mul(x[b],y[d])),Mo),
		mod(add(mul(x[c],y[a]),mul(x[d],y[c])),Mo),
		mod(add(mul(x[c],y[b]),mul(x[d],y[d])),Mo),
	]
end

gets.to_i.times{
	n=sub(gets.to_i,One)
	e=[One,Zero,Zero,One]
	x=[One,One,One,Zero]
	while n>Zero
		e=M(e,x) if (n&One)>Zero
		x=M(x,x)
		n>>=One
	end
	p mod(add(e[Zero],e[One]<<One),Mo)
}
