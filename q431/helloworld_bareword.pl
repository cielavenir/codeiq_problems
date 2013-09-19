#!/usr/bin/perl
#use strictは使えない
use feature say;
use Digest::SHA;
say Hello.chr(length(Digest::SHA->sha256)).World;