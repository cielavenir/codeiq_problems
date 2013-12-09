#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <algorithm>
using namespace std;
string T[]={"C","Cs","D","Ds","E","F","Fs","G","Gs","A","As","B"};
bool KEY[]={true,false,true,false,true,true,false,true,false,true,false,true};
int main(){
	int t,n,i,j;
	string s;
	for(cin>>t;t--;){
		vector<string>r;
		set<int>h;
		for(cin>>n;n--;){
			cin>>s;
			string *p=find(T,T+12,s);
			h.insert(p-T);
		}
		for(i=0;i<12;i++){
			for(j=0;j<12;j++){
				if(!KEY[j%12]&&h.find((i+j)%12)!=h.end())break;
			}
			if(j==12)r.push_back(T[i]);
		}
		if(r.empty())cout<<"invalid"<<endl;
		else for(i=0;i<r.size();i++)cout<<r[i]<<(i<r.size()-1?' ':'\n');
	}
}