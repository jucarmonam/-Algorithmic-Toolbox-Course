#include <iostream>

long long int fibonacci_fast(int n) {
    // write your code here

    long long int fibo[n];
    fibo[0] = 0;
    fibo[1] = 1;
    for(int i=2; i<=n;i++){
        fibo[i] = fibo[i-1] + fibo[i-2];
    }
    std::cout << fibo[0] << std::endl;
    return fibo[n];
}



int LastDigitFibo(long long a){
    int f = (a+2) % 60;
    int fibo = fibonacci_fast(f) % 10;
    if(fibo == 0){
        fibo = 9;
    }else{
        fibo -=1;
    }
    return fibo;
}

int main() {
    long long a = 0;
    std::cin >> a;
    std::cout << LastDigitFibo(a) << std::endl;
    return 0;
}
