//複数の方から、xorで行ける旨指摘がありました。感謝します。

#include <iostream>
#include <string>
#include <vector>
#include <map>
using namespace std;
map<char,int> BASES={{'A',0},{'C',1},{'G',2},{'T',3}};
string base2color(string &str){
/*
	vector<vector<int>> diagram={
		{0,1,2,3},
		{1,0,3,2},
		{2,3,0,1},
		{3,2,1,0},
	};
*/
	string r=string(1,str[0]);
	int cur=BASES[str[0]];
	for(int i=1;i<str.size();i++){
		int nxt=BASES[str[i]];
		//r+=diagram[cur][nxt]+'0';
		r+=(cur^nxt)+'0';
		cur=nxt;
	}
	return r;
}
string color2base(string &str){
	vector<string> diagram={
		"ACGT",
/*
		"CATG",
		"GTAC",
		"TGCA",
*/
	};
	string r=string(1,str[0]);
	int cur=BASES[str[0]];
	for(int i=1;i<str.size();i++){
		//char nxt_base=diagram[cur][str[i]-'0'];
		char nxt_base=diagram[0][cur^(str[i]-'0')];
		r+=nxt_base;
		cur=BASES[nxt_base];
	}
	return r;
}
int main(){
	string line;
	for(;getline(cin,line);){
		cout<<line<<endl;
		getline(cin,line);
		cout<<color2base(line)<<endl;
	}
	return 0;
}