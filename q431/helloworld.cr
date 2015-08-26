#!/usr/bin/env crystal
#t=true.to_s.bytes.first
#szero=t/t
szero=([] of Int32).size.to_s.size
sone=szero<<szero
stwo=szero<<(szero+szero)
sthree=szero<<(szero+szero+szero)
sfour=szero<<(szero+szero+szero+szero)
sfive=szero<<(szero+szero+szero+szero+szero)
ssix=szero<<(szero+szero+szero+szero+szero+szero)

puts [
	(ssix|sthree).chr,
	(ssix|sfive|stwo|szero).chr,
	(ssix|sfive|sthree|stwo).chr,
	(ssix|sfive|sthree|stwo).chr,
	(ssix|sfive|sthree|stwo|sone|szero).chr,
	sfive.chr,
	(ssix|sfour|stwo|sone|szero).chr,
	(ssix|sfive|sthree|stwo|sone|szero).chr,
	(ssix|sfive|sfour|sone).chr,
	(ssix|sfive|sthree|stwo).chr,
	(ssix|sfive|stwo).chr,
].join