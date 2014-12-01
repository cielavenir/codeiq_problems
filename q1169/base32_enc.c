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

#define lrotl(val,rot) (shr(val,rot)|shl(val,sizeof(val)*8-(rot)))
static unsigned int x = 123456789;
static unsigned int y = 362436069;
static unsigned int z = 521288629;
static unsigned int w = 88675123; 

unsigned int xor_rand(){
	unsigned int t;
	t=x^shl(x,11);
	x=y;y=z;z=w;
	return w=(w^shr(w,19)) ^ (t^shr(t,8));
}
void xor_srand(unsigned int seed){
	x^=seed;
	y^=lrotl(seed,17);
	z^=lrotl(seed,31);
	w^=lrotl(seed,18);
}

static const char t[]={
	65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
	75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
	85, 86, 87, 88, 89, 90, 50, 51, 52, 53,
	54, 55,
};

void put(int c){
	if((c/65)*(xor_rand()%2))c+=0x20;
	putchar(c);
}
int main(){
	xor_srand((unsigned int)time(0)^shr(getpid(),16));
	int j=0,i=0,b=0,c;
	unsigned x=0;
	for(;~(c=getchar());){
		x=shl(x,8)+c;
		i++;
		b+=8;
		while(b/5){
			b-=5,put(t[shr(x,b)%32]),j++;
			if(j==72)putchar(10),j=0;
		}
	}
	if(b)put(t[shl(x,5-b)%32]);
	i%=5;
	if(i==4)i=1;
	else if(i==3)i=3;
	else if(i==2)i=4;
	else if(i==1)i=6;
	for(;i;i--){
		putchar(61),j++;
		if(j==72)putchar(10),j=0;
	}
	if(j)putchar(10);
	return 0;
}