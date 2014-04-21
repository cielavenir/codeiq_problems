#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

//問1: combination
//n,k: nCkのパラメータ
//返値: nCk
long long comb(int n,int k){
	int i=0;
	long long r=1;
	if(k*2>n)k=n-k;
	for(;i<k;i++){
		r*=(n-i)/(i+1);
	}
	return r;
}
//問2: permutation
//v: 数列
//返値: 「数列」の順列を保持する配列
vector<vector<int> > permutation(vector<int>&v){
	vector<vector<int> >r;
	vector<int>w=v;
	do{
		r.push_back(w);
	}while(next_permutation(w.begin(),w.end()));
	return r;
}
//問3: log
//v: first=入店時刻(時) second.first=入店時刻(分) second.second=会計時刻(分)
//返値: 当該時内に行われた会計の数の最大数
int log(vector<pair<int,pair<int,int> > >&v){
	vector<int>r(24);
	int i=0,h,H;
	for(;i<v.size();i++){
		h=H=v[i].first;
		if(v[i].second.first>=v[i].second.second)H=h+1;
		r[h]++;
	}
	sort(r.begin(),r.end());
	return r[23];
}
//問4: joseph
//v: first=ポイント second=人の番号(0-indexed)
//d: 飛ばす数
//返値: 勝者の番号(0-indexed)
int joseph(vector<pair<int,int> >v,int d){
	int c=0;
	for(;v.size()>1;c=(c+d)%v.size()){
		if(!--v[c].first){
			v.erase(v.begin()+c);
			if(c==v.size())c--;
		}
	}
	return v[0].second;
}

int main(){
	int t,i,j,n,x,y,z;

	cout<<"Problem 1:"<<endl;
	for(cin>>t;t--;){
		cin>>x>>y;
		cout<<comb(x,y)<<endl;
	}
	cout<<endl;

	cout<<"Problem 2:"<<endl;
	for(cin>>t;t--;){
		cin>>n;
		vector<int>v(n);
		for(i=0;i<n;i++)cin>>v[i];
		vector<vector<int> >r=permutation(v);
		for(i=0;i<r.size();i++){
			for(j=0;j<v.size();j++){
				if(j)cout<<' ';
				cout<<r[i][j];
			}
			cout<<endl;
		}
	}
	cout<<endl;

	cout<<"Problem 3:"<<endl;
	for(cin>>t;t--;){
		cin>>n;
		vector<pair<int,pair<int,int> > >v;
		for(i=0;i<n;i++){
			cin>>x>>y>>z;
			v.push_back(make_pair(x,make_pair(y,z)));
		}
		cout<<log(v)<<endl;
	}
	cout<<endl;

	cout<<"Problem 4:"<<endl;
	for(cin>>t;t--;){
		cin>>x>>y;
		vector<pair<int,int> >v;
		for(i=0;i<x;i++)cin>>z,v.push_back(make_pair(z,i));
		cout<<joseph(v,y)<<endl;
	}
}