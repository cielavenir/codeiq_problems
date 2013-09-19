#!/usr/bin/scala
!#
import scala.math

object helloworld{
	def main(args: Array[String]){
		var szero=math.log(math.E).toInt
		var sone=szero<<szero;
		var stwo=szero<<(szero+szero);
		var sthree=szero<<(szero+szero+szero);
		var sfour=szero<<(szero+szero+szero+szero);
		var sfive=szero<<(szero+szero+szero+szero+szero);
		var ssix=szero<<(szero+szero+szero+szero+szero+szero);

		print((ssix|sthree).toChar);
		print((ssix|sfive|stwo|szero).toChar);
		print((ssix|sfive|sthree|stwo).toChar);
		print((ssix|sfive|sthree|stwo).toChar);
		print((ssix|sfive|sthree|stwo|sone|szero).toChar);
		print((sfive).toChar);
		print((ssix|sfour|stwo|sone|szero).toChar);
		print((ssix|sfive|sthree|stwo|sone|szero).toChar);
		print((ssix|sfive|sfour|sone).toChar);
		print((ssix|sfive|sthree|stwo).toChar);
		print((ssix|sfive|stwo).toChar);
		println();
	}
}
helloworld.main(args)
