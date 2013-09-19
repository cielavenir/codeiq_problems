#!/usr/bin/gst
szero:={true} size.
sone:=szero+szero.
stwo:=sone+sone.
sthree:=stwo+stwo.
sfour:=sthree+sthree.
sfive:=sfour+sfour.
ssix:=sfive+sfive.
Transcript show:
((ssix+sthree) asCharacter asString),
((ssix+sfive+stwo+szero) asCharacter asString),
((ssix+sfive+sthree+stwo) asCharacter asString),
((ssix+sfive+sthree+stwo) asCharacter asString),
((ssix+sfive+sthree+stwo+sone+szero) asCharacter asString),
((sfive) asCharacter asString),
((ssix+sfour+stwo+sone+szero) asCharacter asString),
((ssix+sfive+sthree+stwo+sone+szero) asCharacter asString),
((ssix+sfive+sfour+sone) asCharacter asString),
((ssix+sfive+sthree+stwo) asCharacter asString),
((ssix+sfive+stwo) asCharacter asString),
((sthree+sone) asCharacter asString).