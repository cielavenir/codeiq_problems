#!/usr/bin/pike
int main(int argc, array(string) argv){
	int szero=Int.NATIVE_MIN/Int.NATIVE_MIN;
	int sone=szero+szero;
	int stwo=sone+sone;
	int sthree=stwo+stwo;
	int sfour=sthree+sthree;
	int sfive=sfour+sfour;
	int ssix=sfive+sfive;
	Stdio.stdout.write(int2char(ssix+sthree));
	Stdio.stdout.write(int2char(ssix+sfive+stwo+szero));
	Stdio.stdout.write(int2char(ssix+sfive+sthree+stwo));
	Stdio.stdout.write(int2char(ssix+sfive+sthree+stwo));
	Stdio.stdout.write(int2char(ssix+sfive+sthree+stwo+sone+szero));
	Stdio.stdout.write(int2char(sfive));
	Stdio.stdout.write(int2char(ssix+sfour+stwo+sone+szero));
	Stdio.stdout.write(int2char(ssix+sfive+sthree+stwo+sone+szero));
	Stdio.stdout.write(int2char(ssix+sfive+sfour+sone));
	Stdio.stdout.write(int2char(ssix+sfive+sthree+stwo));
	Stdio.stdout.write(int2char(ssix+sfive+stwo));
	Stdio.stdout.write(int2char(sthree+sone));
}