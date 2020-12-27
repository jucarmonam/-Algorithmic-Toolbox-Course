#include <iostream>

int fibonacci_naive(int n) {
    if (n <= 1)
        return n;

    return fibonacci_naive(n - 1) + fibonacci_naive(n - 2);
}

long long int fibonacci_fast(int n) {
    // write your code here

    long long int fibo[n];
    fibo[0] = 0;
    fibo[1] = 1;
    for(int i=2; i<=n;i++){
        fibo[i] = fibo[i-1] + fibo[i-2];
    }
    return fibo[n];
}

int main() {
    int n = 0;
    std::cin >> n;

    //std::cout << fibonacci_naive(n) << '\n';
    std::cout << fibonacci_fast(n) << '\n';
    return 0;
}
