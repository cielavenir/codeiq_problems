#include <stdio.h>
int main(){
	const int mod=1000000007;
	const int target=100000000;
	int i=3,a=1,b=1,c;
	for(;i<=target;i++){
		c=(a+b)%mod;
		a=b;
		b=c;
	}
	printf("%d\n",c);
	return 0;
}