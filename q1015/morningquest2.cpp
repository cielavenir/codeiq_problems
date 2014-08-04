#include <valarray>
#include <cstdio>
using namespace std;
typedef valarray<long long>V;
const int mod=1000000007;
int n=2; //nxn行列
V z; //一時領域
V &Me(const V &_x,const V &_y){ //行列の積
	int i=0,j;
	for(;i<n;i++)for(j=0;j<n;j++)z[i*n+j]=(_x[slice(i*n,n,1)]*_y[slice(j,n,n)]).sum()%mod;
	return z;
}
V &Mx(const V &_x){ //行列の2乗
	int i=0,j;
	for(;i<n;i++)for(j=0;j<n;j++)z[i*n+j]=(_x[slice(i*n,n,1)]*_x[slice(j,n,n)]).sum()%mod;
	return z;
}
int main(){
	int T;
	long long t=100000000;
	V x(n*n);
	V e(n*n);
	z.resize(n*n);

	x[0]=x[1]=x[2]=1;
	e[0]=e[3]=1;
	for(;t;t>>=1){
		if(t&1)e=Me(e,x);
		x=Mx(x);
	}
	printf("%lld\n",e[1]);
	return 0;
}