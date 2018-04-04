#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>

int main(int argc,char **argv){
	char forbidden_characters[]="0123456789\"'\\*/%";
	int forbidden_size=strlen(forbidden_characters);

	if(argc<4){
		fprintf(stderr,"fib_judge in.txt out.txt source.src\n");
		return 1;
	}
	long long answer;
	long long output;
	{
		FILE *fin=fopen(argv[2],"rb");
		for(;~fscanf(fin,"%lld",&answer);){
			if(scanf("%lld",&output)==EOF)return -1; //format error.
			if(output!=answer)return 1; //wrong answer.
		}
		fclose(fin);
	}

	struct stat st;
	stat(argv[3],&st);
	char *buf=(char*)malloc(st.st_size);
	{
		FILE *fin=fopen(argv[3],"rb");
		fread(buf,1,st.st_size,fin);
		fclose(fin);
	}
	int i=0;
	for(;i<st.st_size;i++){
		if(strchr(forbidden_characters,buf[i]))break;
	}
	free(buf);
	return i<st.st_size ? 2 : 0;
}
