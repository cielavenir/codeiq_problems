//usr/bin/env picoc $0 $@;exit
#include <stdio.h>
int szero,zero;
int main(){
	//int one;
	//one=-~(one^one);
	//one=sizeof(char);
	szero++;
	int sone=szero<<szero;
	int stwo=szero<<(szero+szero);
	int sthree=szero<<(szero+szero+szero);
	int sfour=szero<<(szero+szero+szero+szero);
	int sfive=szero<<(szero+szero+szero+szero+szero);
	int ssix=szero<<(szero+szero+szero+szero+szero+szero);

	putchar(ssix|sthree);
	putchar(ssix|sfive|stwo|szero);
	putchar(ssix|sfive|sthree|stwo);
	putchar(ssix|sfive|sthree|stwo);
	putchar(ssix|sfive|sthree|stwo|sone|szero);
	putchar(sfive);
	putchar(ssix|sfour|stwo|sone|szero);
	putchar(ssix|sfive|sthree|stwo|sone|szero);
	putchar(ssix|sfive|sfour|sone);
	putchar(ssix|sfive|sthree|stwo);
	putchar(ssix|sfive|stwo);
	putchar(sthree|sone);
	return zero;
}