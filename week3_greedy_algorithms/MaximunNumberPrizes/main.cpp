#include <iostream>
#include <vector>

void MaximunNumberPrizes(long long n){
    std::vector<long long> prices;
    long long sum = 0;
    for(long long i=1; i<=n; i++){
        sum += i;
        if(sum<n){
            prices.push_back(i);
        }else if(sum==n){
            prices.push_back(i);
            break;
        }else{
            sum -= i-1;
            prices.pop_back();
            prices.push_back(i);
            if(sum==n){
                break;
            }
        }
    }
    int l = prices.size();
    std::cout<< l <<"\n";
    for(int i=0; i<l; i++){
        std::cout<< prices[i] << " ";
    }
}

int main() {
    long long n = 0;
    std::cin >> n;

    MaximunNumberPrizes(n);
    return 0;
}
