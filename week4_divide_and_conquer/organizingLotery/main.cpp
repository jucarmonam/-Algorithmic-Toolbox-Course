#include <iostream>
#include <vector>
#include <algorithm>

bool wayToSort(std::pair<int,std::pair<char,int>> a, std::pair<int,std::pair<char,int>> b) {
    //return (a.first < b.first) || ((a.first == b.first) && (a.second.second < b.second.second));
    if(a.first < b.first){
        return true;
    }else if(a.first == b.first){
        if(a.second.first == 'l' && b.second.first == 'p') return true;
        if(a.second.first == 'l' && b.second.first == 'r') return true;
        if(a.second.first == 'p' && b.second.first == 'r') return true;
    }

    return false;
}

void organizingLottery(std::vector<std::pair<int,std::pair<char,int>>> nums, int p){
int res [p];
int temp = 0;
int k = -1;
    for(int i = 0; i < nums.size(); i++){
        if(nums[i].second.first == 'l'){
            temp++;
        }else if(nums[i].second.first == 'p'){
            k = nums[i].second.second;
            res[k] = temp;
        }else if(nums[i].second.first == 'r'){
            temp--;
        }
    }

    for(int j = 0; j< p; j++){
        printf("%i ", res[j]);
    }
}

int main() {
    int n,s;
    std::cin>>n>>s;
    std::vector<std::pair<int,std::pair<char,int>>> nums;
    std::vector<std::pair<int,std::pair<char,int>>> nums2;
    for(int i = 0; i < n; i++){
        int a;
        std::cin>>a;
        std::pair<int,std::pair<char,int> > l;
        l.first = a;
        l.second.first = 'l';
        l.second.second = INT16_MIN;
        nums.push_back(l);

        int b;
        std::cin>>b;
        std::pair<int,std::pair<char,int> > r;
        r.first = b;
        r.second.first = 'r';
        r.second.second = INT16_MAX;
        nums2.push_back(r);
    }

    for(int i = 0; i < s; i++){
        int p;
        std::cin>>p;
        std::pair<int,std::pair<char,int> > po;
        po.first = p;
        po.second.first = 'p';
        po.second.second = i;
        nums.push_back(po);
    }

    for(int i = 0; i < n; i++){
        nums.push_back(nums2[i]);
    }


    std::sort(nums.begin(), nums.end(), wayToSort);

    organizingLottery(nums, s);
    return 0;
}