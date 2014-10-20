#include <stdio.h>
#include <math.h>
#define FUNCS 4
long double f(long double x){return powl(x,x);}
//long double rectangle(long double a,long double b){return f(a);}
long double trapezoid(long double a,long double b){return (f(a)+f(b))/2;}
long double simpson(long double a,long double b){return (f(a)+4*f((a+b)/2)+f(b))/6;}
long double simpson2(long double a,long double b){return (f(a)+3*f((a+a+b)/3)+3*f((a+b+b)/3)+f(b))/8;}
long double boole(long double a,long double b){return (7*f(a)+32*f((a+a+a+b)/4)+12*f((a+a+b+b)/4)+32*f((a+b+b+b)/4)+7*f(b))/90;}
int main(){
	long double (*func[FUNCS])(long double a,long double b)={trapezoid,simpson,simpson2,boole};
	long double a=1,b=6;
	long double target=17128.111274826415512L,eps=0.1L;
	int i,j,section;
	for(j=0;j<FUNCS;j++){
		for(section=1;;section++){
			long double result=0;
			long double start=a,d=(b-a)/section;
			for(i=0;i<section;i++,start+=d)result+=func[j](start,start+d)*d;
			result-=target;
			if(result*result<eps*eps){
			//if(fabsl(result)<eps){
				printf("%d %.9Lf\n",section,result);
				break;
			}
		}
	}
	return 0;
}
/*
1648 17128.211188652
40 17128.202367538
32 17128.209959407
10 17128.182898952
*/