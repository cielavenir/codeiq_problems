with Ada.Text_IO,Ada.Numerics.Elementary_Functions;
procedure HelloWorld is
szero,sone,stwo,sthree,sfour,sfive,ssix:integer;
begin
	szero:=Integer(Ada.Numerics.Elementary_Functions.Exp(Float(szero)));
	sone:=szero+szero;
	stwo:=sone+sone;
	sthree:=stwo+stwo;
	sfour:=sthree+sthree;
	sfive:=sfour+sfour;
	ssix:=sfive+sfive;

	Ada.Text_IO.Put(Character'Val(ssix+sthree));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+stwo+szero));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sthree+stwo));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sthree+stwo));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sthree+stwo+sone+szero));
	Ada.Text_IO.Put(Character'Val(sfive));
	Ada.Text_IO.Put(Character'Val(ssix+sfour+stwo+sone+szero));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sthree+stwo+sone+szero));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sfour+sone));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+sthree+stwo));
	Ada.Text_IO.Put(Character'Val(ssix+sfive+stwo));
	Ada.Text_IO.Put(Character'Val(sthree+sone));
end HelloWorld;