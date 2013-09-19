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

	write(char(ssix+sthree));
	write(char(ssix+sfive+stwo+szero));
	write(char(ssix+sfive+sthree+stwo));
	write(char(ssix+sfive+sthree+stwo));
	write(char(ssix+sfive+sthree+stwo+sone+szero));
	write(char(sfive));
	write(char(ssix+sfour+stwo+sone+szero));
	write(char(ssix+sfive+sthree+stwo+sone+szero));
	write(char(ssix+sfive+sfour+sone));
	write(char(ssix+sfive+sthree+stwo));
	write(char(ssix+sfive+stwo));
	writeln(char(sthree+sone));
end.