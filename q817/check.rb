#!/usr/bin/ruby
require 'tempfile'
#require 'digest/sha1'

CC='clang++'
dir=File.expand_path('..',__FILE__)+'/'
problem_fname=dir+'spotmistake_wrong.cpp'
input=File.read(dir+'input.txt')
true_output_fname=dir+'output.txt'
true_output=File.binread(true_output_fname)
#true_output_hash=Digest::SHA1.hexdigest(true_output)

if ARGV.size<1
	puts 'check.rb source'
	exit
end
source=ARGV[0]

Tempfile.open('spotmistake'){|f|
	f.close
	system(%Q(#{CC} -xc++ -o "#{f.path}" "#{source}"))
	if !File.exists?(f.path)
		puts 'compile failed'
		exit
	end
	output=''
	IO.popen("#{f.path}",'r+b'){|io|
		io.write(input)
		io.close_write
		output=io.read
	}

	puts 'Result Diff:'
	IO.popen(%Q(diff -u --strip-trailing-cr - "#{true_output_fname}"),'w'){|io|
		io.write(output)
	}
	puts 'Program Diff:'
	system(%Q(diff -u --strip-trailing-cr "#{problem_fname}" "#{source}"))
}