#!/usr/bin/env fan
class HelloWorld{
	static Void main(){
		Int u;
		Str s:=u.toStr
		Int szero:=s.size
		Int sone:=szero+szero
		Int stwo:=sone+sone
		Int sthree:=stwo+stwo
		Int sfour:=sthree+sthree
		Int sfive:=sfour+sfour
		Int ssix:=sfive+sfive
		echo((ssix+sthree).toChar+(ssix+sfive+stwo+szero).toChar+(ssix+sfive+sthree+stwo).toChar+(ssix+sfive+sthree+stwo).toChar+(ssix+sfive+sthree+stwo+sone+szero).toChar+(sfive).toChar+(ssix+sfour+stwo+sone+szero).toChar+(ssix+sfive+sthree+stwo+sone+szero).toChar+(ssix+sfive+sfour+sone).toChar+(ssix+sfive+sthree+stwo).toChar+(ssix+sfive+stwo).toChar)
	}
}