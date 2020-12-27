#include <iostream>
#include <vector>

int Inversions(std::vector<int> nums){
    int res = 0;
    for(int i = 0; i < nums.size(); i++){
        for(int j = i+1; j < nums.size(); j++){
            if(nums[i] > nums[j]){
                res++;
            }
        }
    }
    return res;
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
    std::cout << Inversions(nums) << std::endl;
    return 0;
}
