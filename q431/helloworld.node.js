#!/usr/bin/node
//Please remove above to allow tsc (typescript).
var szero=[].length.toString().length;
//var szero=-~[];
//var szero=-~false;
//var szero;
//szero=-~szero;
var sone=szero<<szero;
var stwo=szero<<(szero+szero);
var sthree=szero<<(szero+szero+szero);
var sfour=szero<<(szero+szero+szero+szero);
var sfive=szero<<(szero+szero+szero+szero+szero);
var ssix=szero<<(szero+szero+szero+szero+szero+szero);
var str=String.fromCharCode(ssix|sthree);
str+=String.fromCharCode(ssix|sfive|stwo|szero);
str+=String.fromCharCode(ssix|sfive|sthree|stwo);
str+=String.fromCharCode(ssix|sfive|sthree|stwo);
str+=String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero);
str+=String.fromCharCode(sfive);
str+=String.fromCharCode(ssix|sfour|stwo|sone|szero);
str+=String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero);
str+=String.fromCharCode(ssix|sfive|sfour|sone);
str+=String.fromCharCode(ssix|sfive|sthree|stwo);
str+=String.fromCharCode(ssix|sfive|stwo);
console.log(str);