#!/usr/bin/coffee
szero=[].length.toString().length
#szero=-~[]
#szero=-~false
sone=szero<<szero
stwo=szero<<(szero+szero)
sthree=szero<<(szero+szero+szero)
sfour=szero<<(szero+szero+szero+szero)
sfive=szero<<(szero+szero+szero+szero+szero)
ssix=szero<<(szero+szero+szero+szero+szero+szero)
str=String.fromCharCode(ssix|sthree)
str+=String.fromCharCode(ssix|sfive|stwo|szero)
str+=String.fromCharCode(ssix|sfive|sthree|stwo)
str+=String.fromCharCode(ssix|sfive|sthree|stwo)
str+=String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero)
str+=String.fromCharCode(sfive)
str+=String.fromCharCode(ssix|sfour|stwo|sone|szero)
str+=String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero)
str+=String.fromCharCode(ssix|sfive|sfour|sone)
str+=String.fromCharCode(ssix|sfive|sthree|stwo)
str+=String.fromCharCode(ssix|sfive|stwo)
console.log(str)