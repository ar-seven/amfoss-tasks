#include <iostream>
using namespace std;

int main(){

int test;
cin >> test;
while(test--){
    long a,b,N;
    int c,d;
    cin >> a >> b >> c >> d >> N;
    long day2=b,day1=a,gift;

    if(N==1){
        gift=a;
    }
    else if(N==2){
        gift=b;
    }
    else{
        for(int j=2; j<N; j++){
        gift=c*day1+d*day2;
        if(gift>1000000006){
            gift=gift%1000000007;
        }
        day1=day2;
        day2=gift;
    }
        
    }
    cout << gift << "\n";
  
    }
    return 0;
}