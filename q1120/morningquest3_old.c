#include <stdio.h>
#include <math.h>
#define FUNCS 5
long double f(long double x){return powl(x,x);}
long double rectangle(long double a,long double b){return f(a);}
long double trapezoid(long double a,long double b){return (f(a)+f(b))/2;}
long double simpson(long double a,long double b){return (f(a)+4*f((a+b)/2)+f(b))/6;}
long double simpson2(long double a,long double b){return (f(a)+3*f((a+a+b)/3)+3*f((a+b+b)/3)+f(b))/8;}
long double boole(long double a,long double b){return (7*f(a)+32*f((a+a+a+b)/4)+12*f((a+a+b+b)/4)+32*f((a+b+b+b)/4)+7*f(b))/90;}
int main(){
	long double (*func[FUNCS])(long double a,long double b)={rectangle,trapezoid,simpson,simpson2,boole};
	long double result[FUNCS]={0,0,0,0,0};
	int section=5;
	long double a=1,b=6;
	long double start=a,d=(b-a)/section;
	int i,j;
	for(i=0;i<section;i++,start+=d){
		for(j=0;j<FUNCS;j++)result[j]+=func[j](start,start+d)*d;
	}
	for(j=0;j<FUNCS;j++)printf("%.15Lf\n",result[j]);
	return 0;
}
/*
17128.110108451443010
17128.111274826442827
17128.111274826415515
17128.111274826415514
17128.111274826415512
*/