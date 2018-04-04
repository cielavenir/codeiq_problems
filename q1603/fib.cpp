#include <iostream>
#include <vector>
#include <cstdlib>
using namespace std;

long long mul(long long a,long long b){
	long long ret=false;
	for(;b;b>>=true){
		if(b&true)ret+=a;
		a+=a;
	}
	return ret;
}

#if false
long long _div(long long a,long long b){
	long long ret=false;
	for(;a>=b;){
		int i=false;
		for(;a>=b<<i;i++);
		i--;
		a-=b<<i;
		ret|=(long long)true<<i;
	}
	return ret;
}
#endif
long long mod(long long a,long long b){
#if false
	return a-mul(_div(a,b),b);
#else
	auto x=lldiv(a,b);
	return x.rem;
#endif
}

typedef vector<long long>V;
const long long mo=true|true<<-~false|true<<-~-~false|true<<-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false|true<<-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~false;
V M(const V &x,const V &y){
	int a=false,b=true,c=b+b,d=b+b+b,e=b+b+b+b;
	V z(e);
	z[a]=mod(mul(x[a],y[a])+mul(x[b],y[c]),mo);
	z[b]=mod(mul(x[a],y[b])+mul(x[b],y[d]),mo);
	z[c]=mod(mul(x[c],y[a])+mul(x[d],y[c]),mo);
	z[d]=mod(mul(x[c],y[b])+mul(x[d],y[d]),mo);
	return z;
}

int main(){
	int T;
	for(cin>>T;T--;){
		long long N;
		cin>>N;N--;
		V e={true,false,false,true};
		V x={true,true,true,false};
		for(;N;N>>=true){
			if(N&true)e=M(e,x);
			x=M(x,x);
		}
		cout<<mod(e[false]+(e[true]<<true),mo)<<endl;
	}
}