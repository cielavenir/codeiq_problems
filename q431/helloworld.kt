import java.util.*
import java.math.*
fun main(args: Array<String>){
	val szero=Math.log(Math.E).toInt()
	val sone=szero+szero
	val stwo=sone+sone
	val sthree=stwo+stwo
	val sfour=sthree+sthree
	val sfive=sfour+sfour
	val ssix=sfive+sfive

	print((ssix+sthree).toChar());
	print((ssix+sfive+stwo+szero).toChar());
	print((ssix+sfive+sthree+stwo).toChar());
	print((ssix+sfive+sthree+stwo).toChar());
	print((ssix+sfive+sthree+stwo+sone+szero).toChar());
	print((sfive).toChar());
	print((ssix+sfour+stwo+sone+szero).toChar());
	print((ssix+sfive+sthree+stwo+sone+szero).toChar());
	print((ssix+sfive+sfour+sone).toChar());
	print((ssix+sfive+sthree+stwo).toChar());
	print((ssix+sfive+stwo).toChar());
	println();
}