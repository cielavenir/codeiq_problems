#!/usr/bin/env dart
main(){
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
	var str=new String.fromCharCode(ssix|sthree);
	str+=new String.fromCharCode(ssix|sfive|stwo|szero);
	str+=new String.fromCharCode(ssix|sfive|sthree|stwo);
	str+=new String.fromCharCode(ssix|sfive|sthree|stwo);
	str+=new String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero);
	str+=new String.fromCharCode(sfive);
	str+=new String.fromCharCode(ssix|sfour|stwo|sone|szero);
	str+=new String.fromCharCode(ssix|sfive|sthree|stwo|sone|szero);
	str+=new String.fromCharCode(ssix|sfive|sfour|sone);
	str+=new String.fromCharCode(ssix|sfive|sthree|stwo);
	str+=new String.fromCharCode(ssix|sfive|stwo);
	print(str);
}