{$apptype console} //Delphi

program HelloWorld;
var szero,sone,stwo,sthree,sfour,sfive,ssix: integer;
begin
	szero:=ord(true);
	sone:=szero shl szero;
	stwo:=szero shl (szero+szero);
	sthree:=szero shl (szero+szero+szero);
	sfour:=szero shl (szero+szero+szero+szero);
	sfive:=szero shl (szero+szero+szero+szero+szero);
	ssix:=szero shl (szero+szero+szero+szero+szero+szero);

	write(chr(ssix+sthree));
	write(chr(ssix+sfive+stwo+szero));
	write(chr(ssix+sfive+sthree+stwo));
	write(chr(ssix+sfive+sthree+stwo));
	write(chr(ssix+sfive+sthree+stwo+sone+szero));
	write(chr(sfive));
	write(chr(ssix+sfour+stwo+sone+szero));
	write(chr(ssix+sfive+sthree+stwo+sone+szero));
	write(chr(ssix+sfive+sfour+sone));
	write(chr(ssix+sfive+sthree+stwo));
	write(chr(ssix+sfive+stwo));
	writeln(chr(sthree+sone));
end.