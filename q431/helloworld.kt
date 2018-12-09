import kotlin.math.*
fun main(args: Array<String>){
	val sone=E.toInt()
	val szero=sone/sone
	val stwo=sone+sone
	val sthree=stwo+stwo
	val sfour=sthree+sthree
	val sfive=sfour+sfour
	val ssix=sfive+sfive

	print((ssix+sthree).toChar())
	print((ssix+sfive+stwo+szero).toChar())
	print((ssix+sfive+sthree+stwo).toChar())
	print((ssix+sfive+sthree+stwo).toChar())
	print((ssix+sfive+sthree+stwo+sone+szero).toChar())
	print((sfive).toChar())
	print((ssix+sfour+stwo+sone+szero).toChar())
	print((ssix+sfive+sthree+stwo+sone+szero).toChar())
	print((ssix+sfive+sfour+sone).toChar())
	print((ssix+sfive+sthree+stwo).toChar())
	print((ssix+sfive+stwo).toChar())
	println()
}
