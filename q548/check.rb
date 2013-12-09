#!/usr/bin/ruby
if ARGV.size<2
	puts "check.rb data.ans answer.txt"
	exit
end

i=0
File.open(ARGV[0],'r'){|ans|
	File.open(ARGV[1],'r'){|txt|
		while x=ans.gets
			y=txt.gets
			if !y
				puts 'answer txt is too short'
				exit
			end
			if x.chomp!=y.chomp
				puts %Q(answer #{i} wrong: expect="#{x.chomp}" actual="#{y.chomp}")
				exit
			end
			i+=1
		end
	}
}
puts 'validation ok'