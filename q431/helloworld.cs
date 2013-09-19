using System;
class HelloWorld{
	static void Main(){
		int szero=(new int[]{}).Length.ToString().Length;
		//int szero=System.Convert.ToInt32(true);
		int sone=szero<<szero;
		int stwo=szero<<(szero+szero);
		int sthree=szero<<(szero+szero+szero);
		int sfour=szero<<(szero+szero+szero+szero);
		int sfive=szero<<(szero+szero+szero+szero+szero);
		int ssix=szero<<(szero+szero+szero+szero+szero+szero);

		Console.Write((char)(ssix|sthree));
		Console.Write((char)(ssix|sfive|stwo|szero));
		Console.Write((char)(ssix|sfive|sthree|stwo));
		Console.Write((char)(ssix|sfive|sthree|stwo));
		Console.Write((char)(ssix|sfive|sthree|stwo|sone|szero));
		Console.Write((char)(sfive));
		Console.Write((char)(ssix|sfour|stwo|sone|szero));
		Console.Write((char)(ssix|sfive|sthree|stwo|sone|szero));
		Console.Write((char)(ssix|sfive|sfour|sone));
		Console.Write((char)(ssix|sfive|sthree|stwo));
		Console.Write((char)(ssix|sfive|stwo));
		Console.WriteLine();
	}
}