/*
export MONO_PATH=/Applications/Unity/Unity.app/Contents/Frameworks/Mono/lib/mono/unity
/Applications/Unity/Unity.app/Contents/Frameworks/Mono/bin/mono /Applications/Unity/Unity.app/Contents/Frameworks/Mono/lib/mono/unity/us.exe -b:System.Object -m:Main -target:exe helloworld.unity.js
/Applications/Unity/Unity.app/Contents/Frameworks/Mono/bin/mono helloworld.unity.exe
*/

import System;

static function Main(){
	var szero=[].length.ToString().length;
	var sone=szero<<szero;
	var stwo=szero<<(szero+szero);
	var sthree=szero<<(szero+szero+szero);
	var sfour=szero<<(szero+szero+szero+szero);
	var sfive=szero<<(szero+szero+szero+szero+szero);
	var ssix=szero<<(szero+szero+szero+szero+szero+szero);
	Console.Write(Convert.ToChar(ssix|sthree));
	Console.Write(Convert.ToChar(ssix|sfive|stwo|szero));
	Console.Write(Convert.ToChar(ssix|sfive|sthree|stwo));
	Console.Write(Convert.ToChar(ssix|sfive|sthree|stwo));
	Console.Write(Convert.ToChar(ssix|sfive|sthree|stwo|sone|szero));
	Console.Write(Convert.ToChar(sfive));
	Console.Write(Convert.ToChar(ssix|sfour|stwo|sone|szero));
	Console.Write(Convert.ToChar(ssix|sfive|sthree|stwo|sone|szero));
	Console.Write(Convert.ToChar(ssix|sfive|sfour|sone));
	Console.Write(Convert.ToChar(ssix|sfive|sthree|stwo));
	Console.Write(Convert.ToChar(ssix|sfive|stwo));
	Console.WriteLine();
}