import java.lang.Math;
class Main{
	static int szero;
	public static void main(String[]arg){
		szero++;
		//int szero=(int)Math.log(Math.E);
		//int szero=String.valueOf((new int[]{}).length).length();
		//int szero=Integer.parseInt(java.math.BigInteger.ONE.toString());
		int sone=szero<<szero;
		int stwo=szero<<(szero+szero);
		int sthree=szero<<(szero+szero+szero);
		int sfour=szero<<(szero+szero+szero+szero);
		int sfive=szero<<(szero+szero+szero+szero+szero);
		int ssix=szero<<(szero+szero+szero+szero+szero+szero);

		System.out.print((char)(ssix|sthree));
		System.out.print((char)(ssix|sfive|stwo|szero));
		System.out.print((char)(ssix|sfive|sthree|stwo));
		System.out.print((char)(ssix|sfive|sthree|stwo));
		System.out.print((char)(ssix|sfive|sthree|stwo|sone|szero));
		System.out.print((char)(sfive));
		System.out.print((char)(ssix|sfour|stwo|sone|szero));
		System.out.print((char)(ssix|sfive|sthree|stwo|sone|szero));
		System.out.print((char)(ssix|sfive|sfour|sone));
		System.out.print((char)(ssix|sfive|sthree|stwo));
		System.out.print((char)(ssix|sfive|stwo));
		System.out.println();
	}
}