#include <iostream>
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

	std::cout<<(char)(ssix|sthree);
	std::cout<<(char)(ssix|sfive|stwo|szero);
	std::cout<<(char)(ssix|sfive|sthree|stwo);
	std::cout<<(char)(ssix|sfive|sthree|stwo);
	std::cout<<(char)(ssix|sfive|sthree|stwo|sone|szero);
	std::cout<<(char)(sfive);
	std::cout<<(char)(ssix|sfour|stwo|sone|szero);
	std::cout<<(char)(ssix|sfive|sthree|stwo|sone|szero);
	std::cout<<(char)(ssix|sfive|sfour|sone);
	std::cout<<(char)(ssix|sfive|sthree|stwo);
	std::cout<<(char)(ssix|sfive|stwo);
	std::cout<<std::endl;
	return zero;
}