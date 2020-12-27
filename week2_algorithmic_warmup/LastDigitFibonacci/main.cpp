#include <iostream>

int lastDigit(long long n) {
    // write your code here

    int fibo[n];
    fibo[0] = 0;
    fibo[1] = 1;
    for(int i=2; i<=n;i++){
        fibo[i] = (fibo[i-1] + fibo[i-2])% 10;
    }
    return fibo[n];
}

int main() {
    long long n = 0;
    std::cin >> n;

    std::cout << lastDigit(n) << '\n';
    return 0;
}
