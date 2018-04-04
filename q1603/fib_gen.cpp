#include <iostream>
#include <string>
#include <random>
#include <algorithm>
#include <ctime>
#include <unistd.h>
using namespace std;

int main(){
	int T=100;
	mt19937_64 engine((unsigned int)time(NULL)^(getpid()<<16));
	uniform_int_distribution<int>gen(1,2000000000);
	cout<<T<<endl;
	for(int i=0;i<T;i++){
		cout<<gen(engine)<<endl;
	}
}
