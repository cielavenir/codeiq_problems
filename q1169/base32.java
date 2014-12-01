import java.io.*;
class Main{
	static long shl(long x,int n){
		int i=0;
		for(;i!=n;i++)x*=2;
		return x;
	}
	static long shr(long x,int n){
		int i=0;
		for(;i!=n;i++)x/=2;
		return x;
	}
	public static void main(String[]args){
		String t=String.valueOf(new char[]{
			65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
			75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
			85, 86, 87, 88, 89, 90, 50, 51, 52, 53,
			54, 55,
		});

		try{
			InputStreamReader reader=new InputStreamReader(System.in);
			OutputStreamWriter writer=new OutputStreamWriter(System.out);

			int b=0,c;
			long x=0;
			int p;
			for(;(c=reader.read())!=-1;){
				if(c==61){
					break;
				}
				if(Boolean.compare(c/97!=0,false)*Boolean.compare(c/123==0,false)==1)c-=0x20;
				if((p=t.indexOf(c))!=-1){
					x=shl(x,5)+p;
					b+=5;
					if(b/8!=0){
						b-=8;
						long r=shr(x,b);
						writer.write((int)(r%256));
						x-=shl(r,b);
					}
				}
			}
			while(b/8!=0){
				b-=8;
				writer.write((int)(shr(x,b)%256));
			}
			writer.flush();
		}catch(Exception e){e.printStackTrace();}
	}
}