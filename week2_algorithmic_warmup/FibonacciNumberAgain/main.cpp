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

int FibonacciAgainFast(int b, int h){
    int n1 = 0;
    int n2 = 1;
    int f = 0;
    for(int i=2; i<=h; i++){
        f = (n1 + n2)%b;
        n1 = n2;
        n2 = f;
    }
    return f;
}

long long FibonacciAgain(long long a, long long b){
    int a1 = 0;
    int a2 = 1;
    int r = 0;
    int k = 0;
    long long h = 0;
    for(int i = 2; i <=b*b; i++){
        r = (a1 + a2)%b;
        a1 = a2;
        a2 = r;

        if(i==a){
            h = r;
            break;
        }
        if(a1 == 0 && a2 == 1){
            k = i-1;
            h = a % k;
            if(h<=1){
                h = fibonacci_fast(h)%b;
            }else{
                h = FibonacciAgainFast(b,h);
            }
            break;
        }

        if(b%10==0 && (a>b)){
            k = 6 * b;
            h = a % k;
            if(h<=1){
                h = fibonacci_fast(h)%b;
            }else{
                h = FibonacciAgainFast(b,h);
            }
            break;
        }

    }
    /*
    int d = a / r;
    d = d*r;
     */
    return h;
}

int main() {
    long long a = 0;
    long long b = 0;
    std::cin >> a;
    std::cin >> b;
    std::cout << FibonacciAgain(a,b) << std::endl;
    return 0;
}