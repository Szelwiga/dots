#include <iostream>
using namespace std;
string s;
int main(){
	getline(cin, s);
	if (s == "Light rain shower")	return cout<<"Light rain", 0;
	return cout<<s, 0;
}
