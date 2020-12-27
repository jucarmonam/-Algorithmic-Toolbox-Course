#include <iostream>

int EuclidGCD(int a, int b) {
    // write your code here
    if(b==0){
        return a;
    }

    int div = a / b;
    int ai = a - b * div;
    return EuclidGCD(b,ai);
}

long long LCM(int a, int b){
    long long gcd = EuclidGCD(a,b);
    return (a/gcd) * b;
}

int main() {
    int a = 0;
    int b = 0;
    std::cin >> a;
    std::cin >> b;

    std::cout << LCM(a,b) << std::endl;
    return 0;
}