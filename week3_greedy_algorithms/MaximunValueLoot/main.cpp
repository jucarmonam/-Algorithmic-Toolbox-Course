#include <iostream>
#include <algorithm>
#include <iomanip>
#include <vector>

bool wayToSort(std::pair<double,double> a, std::pair<double,double> b) { return a.first/a.second > b.first/b.second; }

double MaximunValueLoot(int nu,int cap, std::vector<std::pair<double,double>> vec){
    double V = 0;
    double a = 0;
    for(int i = 0; i<= nu; i++){
        if(cap == 0){
            return V;
        }

        if(vec[i].second - cap > 0){
            a = cap;
        }else{
            a = vec[i].second;
        }
        V = V + a*(vec[i].first/vec[i].second);
        //weights[n] = weights[n] - a;
        cap = cap - a;
    }
    return V;
}


int main() {
    int n = 0;
    int cap = 0;
    std::cin >> n >> cap;
    std::vector <std::pair<double,double>> valores;

    for(int i = 0; i < n ; i++){
        double a = 0;
        double b = 0;
        std::cin >> a >> b;
        valores.push_back(std::make_pair(a,b));
    }
    std::sort(valores.begin(), valores.end(), wayToSort);

    printf("%.4f",MaximunValueLoot(n,cap,valores));
    return 0;
}
