static const char t[]={
	65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
	75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
	85, 86, 87, 88, 89, 90, 50, 51, 52, 53,
	54, 55,
};
unsigned int shl(unsigned int x,int n){
	int i=0;
	for(;i!=n;i++)x*=2;
	return x;
}
unsigned int shr(unsigned int x,int n){
	int i=0;
	for(;i!=n;i++)x/=2;
	return x;
}
int main(){
	int b=0,c;
	unsigned x=0;
	char *p;
	for(;~(c=getchar());){
		if(c==61){
			break;
		}
		if((c/97)*!(c/123))c-=0x20;
		if(p=strchr(t,c)){
			x=shl(x,5)+(p-t); //xは非負整数かつビット数が決まっているので、左側にあふれたビットは単に捨てられる
			b+=5;
			if(b/8)b-=8,putchar(shr(x,b)%256);
		}
	}
	while(b/8)b-=8,putchar(shr(x,b)%256);
	return 0;
}