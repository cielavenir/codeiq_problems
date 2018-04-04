#include <iostream>
#include <vector>
#include <cstdlib>
using namespace std;

typedef vector<long long>V;
const long long zero=false;
const long long one=true;
const long long two=one<<one;
const long long three=two|one;
const long long four=two<<one;
const long long five=four|one;
const long long six=four|two;
const long long seven=four|two|one;
const long long eight=four<<one;
const long long nine=eight|one;
const long long ten=eight|two;

constexpr long long add(long long a,long long b){
	long long bchk=b;
	long long msk=one;
	long long c=zero;
	for(;bchk|c;bchk>>=one){
		long long cx=((a&b&msk)^(b&c)^(c&a));
		a^=(b&msk)^c;
		c=cx;
		c<<=one;
		msk<<=one;
	}
	return a;
}
long long sub(long long a,long long b){
	return add(~add(~zero,b),a);
}

const long long mo=one|two|four|one<<nine|one<<add(one,ten)|one<<add(four,ten)|one<<add(five,ten)|one<<add(seven,ten)|one<<add(nine,ten)|one<<add(ten,ten)|one<<add(add(three,ten),ten)|one<<add(add(four,ten),ten)|one<<add(add(five,ten),ten)|one<<add(add(seven,ten),ten)|one<<add(add(eight,ten),ten)|one<<add(add(nine,ten),ten);

long long mul(long long a,long long b){
	long long ret=zero;
	for(;b;b>>=one){
		if(b&one)ret=add(ret,a);
		a=add(a,a);
	}
	return ret;
}

long long _div(long long a,long long b){
	long long ret=zero;
	for(;a>=b;){
		long long i=zero;
		for(;a>=b<<i;i=add(i,one));
		i=sub(i,one);
		a=sub(a,b<<i);
		ret|=one<<i;
	}
	return ret;
}

long long mod(long long a,long long b){
	return sub(a,mul(_div(a,b),b));
}

V M(const V &x,const V &y){
	long long a=zero,b=one,c=two,d=three,e=four;
	V z(e);
	z[a]=mod(add(mul(x[a],y[a]),mul(x[b],y[c])),mo);
	z[b]=mod(add(mul(x[a],y[b]),mul(x[b],y[d])),mo);
	z[c]=mod(add(mul(x[c],y[a]),mul(x[d],y[c])),mo);
	z[d]=mod(add(mul(x[c],y[b]),mul(x[d],y[d])),mo);
	return z;
}

int main(){
	long long T;
	for(cin>>T;T;T=sub(T,one)){
		long long N;
		cin>>N;N=sub(N,one);
		V e={one,zero,zero,one};
		V x={one,one,one,zero};
		for(;N;N>>=one){
			if(N&one)e=M(e,x);
			x=M(x,x);
		}
		cout<<mod(add(e[zero],e[one]<<one),mo)<<endl;
	}
}
