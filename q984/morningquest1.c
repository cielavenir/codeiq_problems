#include <stdio.h>
#define N 1000
int main(){
	int r=0,i,j;
	for(i=1;i<=N;i++){
		for(j=1;j*j<i;j++)if(i%j==0)r+=j+i/j;
		if(j*j==i)r+=j;
	}
	printf("%d\n",r);
	return 0;
}