#!/usr/bin/env groovy
//szero=Math.log(Math.E).toInteger()
szero=[true].size
sone=szero<<szero;
stwo=szero<<(szero+szero);
sthree=szero<<(szero+szero+szero);
sfour=szero<<(szero+szero+szero+szero);
sfive=szero<<(szero+szero+szero+szero+szero);
ssix=szero<<(szero+szero+szero+szero+szero+szero);

print((char)(ssix|sthree));
print((char)(ssix|sfive|stwo|szero));
print((char)(ssix|sfive|sthree|stwo));
print((char)(ssix|sfive|sthree|stwo));
print((char)(ssix|sfive|sthree|stwo|sone|szero));
print((char)(sfive));
print((char)(ssix|sfour|stwo|sone|szero));
print((char)(ssix|sfive|sthree|stwo|sone|szero));
print((char)(ssix|sfive|sfour|sone));
print((char)(ssix|sfive|sthree|stwo));
print((char)(ssix|sfive|stwo));
println();