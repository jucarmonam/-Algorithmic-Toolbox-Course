#include <iostream>
#include <vector>
#include <cstdlib>
#include <time.h>
#include <algorithm>

bool wayToSort(int a, int b) { return a < b; }

void Swap(std::vector<int>& nums,int l, int r){
    if(nums[l] != nums[r]){
        int temp = nums[l];
        nums[l] = nums[r];
        nums[r] = temp;
    }
}

std::vector<int> Partition(std::vector<int>& nums, int l, int r){
    int x = nums[l];
    int j = l;
    //std::pair <std::vector<int>, std::vector<int>> ret;
    std::vector<int> m;
    m.push_back(0);
    m.push_back(0);
    for (int i = l+1; i <= r ; ++i) {
        if(nums[i] < x){
            if(m[0] == 0) {
                j++;
                Swap(nums,j,i);
            }else if(m[0]==m[1]){
                Swap(nums,m[0],i);
                Swap(nums,m[0]+1,i);
                j++;
                m[0]++;
                m[1] = m[0];
            }else{
                Swap(nums,m[0],i);
                Swap(nums,m[1]+1,i);
                j++;
                m[0]++;
                m[1]++;
            }
        }else if(nums[i] == x){
            if(m[0] == 0){
                Swap(nums,j+1,i);
                m[0] = j+1;
                m[1] = m[0];
            }else if(m[0] == m[1]){
                Swap(nums,m[0]+1,i);
                m[1]=m[0]+1;
            }else{
                Swap(nums,m[1]+1,i);
                m[1]=m[1]+1;
            }
        }
    }

    if(m[0] == 0){
        m[0] = j;
        m[1] = j;
        Swap(nums,l,j);
    }else{
        m[0] = j;
        Swap(nums,l,j);
    }

    //ret.first = nums;
    //ret.second = m;
    return m;
}

void QuickSort(std::vector<int>& nums, int l, int r){
    if(l >= r){
        return;
    }else{
        int pru = (r - l)+1;
        int k = rand() % pru + l;
        Swap(nums,l,k);
        //std::pair <std::vector<int>, int> ret;
        //ret = Partition(nums,l,r);
        //nums = QuickSort(ret.first, l, ret.second-1);
        //nums = QuickSort(ret.first,ret.second+1,r);

        //std::pair <std::vector<int>, std::vector<int>> ret;
        std::vector<int> m;
        m = Partition(nums,l,r);
        QuickSort(nums, l, m[0]-1);
        QuickSort(nums,m[1]+1,r);
    }
}

int main() {
    srand (time(NULL));

    int n = 0;
    std::cin>>n;
    std::vector<int> nums;
    for(int i = 0; i < n; i++){
        int a;
        std::cin>>a;
        nums.push_back(a);
    }
    QuickSort(nums,0,nums.size()-1);

/*
    while (true){
        int n = rand() % 10;
        std::vector<int> nums;
        for(int i = 0; i < n; i++){
            int a = rand() % 10;
            nums.push_back(a);
        }
        std::vector<int> nums2 = nums;
        std::vector<int> nums3 = nums;
        std::sort(nums2.begin(), nums2.end(), wayToSort);
        QuickSort(nums3,0,nums3.size()-1);
        if(nums2 == nums3){
            printf("iguales \n");
        }else{
            for(int i = 0; i < n; i++){
                printf("%i ",nums[i]);
            }
            printf("\n");
            for(int i = 0; i < n; i++){
                printf("%i ",nums2[i]);
            }
            break;
        }
    }
*/

    for(int i = 0; i < n; i++){
        printf("%i ",nums[i]);
    }

    return 0;
}
