class HelloWorld{
        static function main(){
		var szero=-~[].length;
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
		Sys.println(str);
        }
}