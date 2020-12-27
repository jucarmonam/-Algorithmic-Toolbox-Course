#include <iostream>
#include <vector>
#include <algorithm>
#include <math.h>

bool wayToSort(int a, int b) { return a < b; }

int BinarySearch(std::vector<int> nums, int k){
    int h = nums.size() - 1;
    int l = 0;
    double med = l + std::ceil((h-l)/2);
    while(h>=l) {
        if(nums[med] == k){
            return med;
        }else if(k < nums[med]){
            h = med - 1;
            med = l + std::ceil((h-l)/2);
        }else{
            l = med + 1;
            med = l + std::ceil((h-l)/2);
        }
    }
    return  -1;
}

int main() {
    int n = 0;
    std::cin>>n;
    std::vector<int> nums;
    for(int i = 0; i < n; i++){
        int a;
        std::cin>>a;
        nums.push_back(a);
    }
    int k = 0;
    std::cin>>k;
    std::vector<int> points;
    for(int i = 0; i < k; i++){
        int b;
        std::cin>>b;
        points.push_back(b);
    }
    std::sort(nums.begin(), nums.end(), wayToSort);
    for(int j = 0; j < points.size(); j++){
        std::cout<<BinarySearch(nums, points[j])<<" ";
    }

    return 0;
}
