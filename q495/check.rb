#!/usr/bin/ruby
#check.rb data.in < result.txt
class Numeric
	def degtorad() self*Math::PI/180 end
end
def distance(a,b)
	6378.137*Math.acos(
		Math.sin(a[:la].degtorad)*Math.sin(b[:la].degtorad)+
		Math.cos(a[:la].degtorad)*Math.cos(b[:la].degtorad)*Math.cos((a[:ln]-b[:ln]).degtorad)
	)
end
def getline
	s=STDIN.gets
	if s
		s.strip.sub(/^#/,'').sub(/^\/\//,'')
	else
		nil
	end
end

places=Hash.new{|h,k|h[k]=[]}
cities=[]
File.open(ARGV[0]){|f|
	f.gets.to_i.times{
		a=f.gets.split
		places[a[0]]<<{:la=>a[1].to_f,:ln=>a[2].to_f}
	}
	f.gets.to_i.times{
		cities<<f.gets.chomp
	}
}
dist=getline.to_f
result=[]
while line=getline
	a=line.split
	result<<{:la=>a[0].to_f,:ln=>a[1].to_f}
end
if cities.size!=result.size
	puts 'result size is wrong: '+result.size.to_s
	exit
end
result.each_with_index{|e,i|
	city=cities[i]
	if places[city].each_with_index{|f,j|
		if (e[:la]-f[:la]).abs<1e-4 && (e[:ln]-f[:ln]).abs<1e-4
			places[city].delete_at(j)
			break
		end
	}
		puts 'result is wrong: '+e.inspect
		exit
	end
}
d=0
(result.size-1).times{|i|
	d+=distance(result[i],result[i+1])
}
if (d-dist).abs>1e-3
	puts 'dist is wrong: '+d.to_s
	exit
end
puts 'validation ok'