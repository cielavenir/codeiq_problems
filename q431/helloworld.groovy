#!/usr/bin/groovy
int szero=Math.log(Math.E).toInteger()
int sone=szero<<szero;
int stwo=szero<<(szero+szero);
int sthree=szero<<(szero+szero+szero);
int sfour=szero<<(szero+szero+szero+szero);
int sfive=szero<<(szero+szero+szero+szero+szero);
int ssix=szero<<(szero+szero+szero+szero+szero+szero);

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