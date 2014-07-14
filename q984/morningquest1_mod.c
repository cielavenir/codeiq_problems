#include <stdio.h>
#define N 1000LL
int main(){
	long long r=0,i;
	for(i=1;i<=N;i++)r+=N/i*i;
	printf("%lld\n",r);
	return 0;
}