#include <iostream>
#include <vector>
#include <algorithm>

bool wayToSort(int a, int b) { return a > b; }

long long MaximunAdvertisementRevenue(std::vector<long long> beneficios, std::vector<long long> clicks){
    long long res = 0;
    for(int i = 0; i < beneficios.size(); i++){
        res += beneficios[i] * clicks[i];
    }
    return res;
}

int main() {
    int n = 0;
    std::cin >> n;
    std::vector<long long> beneficios;
    std::vector<long long> clicks;
    for(int i = 0; i < n; i++){
        long long s = 0;
        std::cin >> s;
        beneficios.push_back(s);
    }
    for(int i = 0; i < n; i++){
        long long s = 0;
        std::cin >> s;
        clicks.push_back(s);
    }
    std::sort(beneficios.begin(), beneficios.end(), wayToSort);
    std::sort(clicks.begin(), clicks.end(), wayToSort);
    std::cout << MaximunAdvertisementRevenue(beneficios,clicks) << std::endl;
    return 0;
}
