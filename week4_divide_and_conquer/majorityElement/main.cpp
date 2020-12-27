#include <iostream>
#include <vector>
#include <algorithm>

bool wayToSort(int a, int b) { return a < b; }

int majorityElement(std::vector<int> nums){
    int count = 1;
    int half = (nums.size())/2;
    int n = nums[0];
    for(int i = 1; i < nums.size(); i++){
        if(n == nums[i]){
            count++;
            if(count>half){
                return 1;
            }
        }else{
            n = nums[i];
            count = 1;
        }
    }
    return 0;
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
    std::sort(nums.begin(), nums.end(), wayToSort);

    std::cout << majorityElement(nums) << std::endl;
    return 0;
}
