#include <iostream>
using namespace std;

int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    int num;
    cin >> num;

    //store factors in array
    int factors[1000000];
    int count = 0;
    factors[count]=num;
    count++;
    for (int i = 1; i <= num/2; i++) {
        if (num % i == 0) {
            factors[count] = i;
            count++;
        }
        }

    int c=0;
    //multiply factors with factors
    for (int i = 0; i < count; i++) {
        for (int j = 0; j < count; j++) {
            if (factors[i] * factors[j] == num) {
                c++;
            }
        }
    }
    cout << c;



    return 0;

}