#include <iostream>

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

int LastDigitFiboAgain(long long a, long long b){
    int res = 0;
    if(a == 0 && b == 0){

    }else if(a == b){
        res = LastDigitFibo(a-2)+1;
    }else if(a == 0){
        res = LastDigitFibo(b);
    }else if(b==0){

    }else{
        int m = LastDigitFibo(a-1);
        int n = LastDigitFibo(b);
        if(n == 0){
            res = 10-m;
        }else if(n<m) {
            res = (n+10) - m;
        }else{
                res = (n - m);
        }
    }

    return res;
}

int main() {
    long long a = 0;
    long long b = 0;
    std::cin >> a;
    std::cin >> b;
    std::cout << LastDigitFiboAgain(a,b) << std::endl;
    return 0;
}
