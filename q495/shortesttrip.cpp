//Shortest Trip answer by @cielavenir
//data0: 0.008s
//data1: 1m59.022s
//data2: unknown

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <algorithm>
#include <cmath>
#include <climits>
#include <cstdio>

using namespace std;
typedef pair<double,double> coor;
typedef map<string,vector<coor> > str2coor;
typedef pair<vector<int>,string > strNidx;

str2coor place;     //{ "aki"=>[[33.50,133.91],[34.37,132.53]], ... }
vector<strNidx>idx; //[ [[0,2],"higashi"], ... ]
vector<coor> coors,coors_min;
double d_min=LLONG_MAX;
void output(){
	printf("%f\n",d_min);
	for(int x=0;x<coors_min.size();x++)printf("%f %f\n",coors_min[x].first,coors_min[x].second);
}
void dfs(int n){
	if(n==idx.size()){
		double d=0;
		for(int i=0;i<coors.size()-1;i++){
			//d+=hypot(coors[i].first-coors[i+1].first,coors[i].second-coors[i+1].second); //Euclidean
			d+=6378.137*acos(
				sin(coors[i].first*M_PI/180)*sin(coors[i+1].first*M_PI/180)+
				cos(coors[i].first*M_PI/180)*cos(coors[i+1].first*M_PI/180)*cos(coors[i+1].second*M_PI/180-coors[i].second*M_PI/180)
			);
		}
		if(d<d_min){
			d_min=d;
			coors_min=coors;
			output();
		}
	}else{
		strNidx idxes_char=idx[n];
		vector<coor>&cur_place=place[idxes_char.second];
		int k=idxes_char.first.size();
		do{
			for(int i=0;i<k;i++)coors[idxes_char.first[i]]=cur_place[i];
			dfs(n+1);
			//next_partial_permutation: http://origin.googlecode.com/svn-history/r366/trunk/core/include/origin/algorithm/boost_combination.hpp
			if(cur_place.begin()==cur_place.begin()+k)break;
			reverse(cur_place.begin()+k,cur_place.end());
		}while(next_permutation(cur_place.begin(),cur_place.end()));
	}
}
int main(){
	int i,n,m;
	string s;
	{
		double y,x;
		for(cin>>n,i=0;i<n;i++){
			cin>>s>>y>>x;
			place[s].push_back(make_pair(y,x));
		}
		for(str2coor::iterator it=place.begin();it!=place.end();it++){
			//dfs()内でnext_partial_permutation()を使うため、placeは小さい順に並んでいる必要がある
			sort(it->second.begin(),it->second.end());
		}
	}

	{
		map<string,vector<int> >_idx;
		for(cin>>m,i=0;i<m;i++){
			cin>>s;
			_idx[s].push_back(i);
		}
		coors.resize(m);
		i=0;
		for(map<string,vector<int> >::iterator it=_idx.begin();it!=_idx.end();it++,i++){
			fprintf(stderr,"---%s: %luP%lu\n",it->first.c_str(),place[it->first].size(),it->second.size());
			idx.push_back(make_pair(it->second,it->first));
		}
	}
	dfs(0);
	output();
}
