#!/usr/bin/ruby
BASES=Hash[*'ACGT'.each_char.with_index.to_a.flatten(1)]
def base2color(str)
	diagram=[
		[0,1,2,3],
		[1,0,3,2],
		[2,3,0,1],
		[3,2,1,0],
	]
	r=str[0,1]
	cur=BASES[str[0,1]]
	str[1..-1].each_char{|c|
		nxt=BASES[c]
		r+=diagram[cur][nxt].to_s
		cur=nxt
	}
	r
end
def color2base(str)
	diagram=[
		'ACGT',
		'CATG',
		'GTAC',
		'TGCA',
	]
	r=str[0,1]
	cur=BASES[str[0,1]]
	str[1..-1].each_char{|c|
		nxt_base=diagram[cur][c.to_i,1]
		r+=nxt_base
		cur=BASES[nxt_base]
	}
	r
end

if __FILE__==$0
	while gets
		puts $_ #header
		puts color2base(gets.chomp)
	end
end
