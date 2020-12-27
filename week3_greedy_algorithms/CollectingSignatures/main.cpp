#include <iostream>
#include <vector>
#include <algorithm>

bool wayToSort(std::pair<double,double> a, std::pair<double,double> b) { return a.second < b.second; }

void CollectingSigantures(int n,std::vector<std::pair<int,int>> vec){
    std::vector <int> puntos;
    for (int i = 0;  i<n ; i++) {
        if(i==0){
            puntos.push_back(vec[i].second);
        }else{
            if(puntos.back() >= vec[i].first && puntos.back()<=vec[i].second){

            }else{
                int l = vec[i].second;
                puntos.push_back(l);
                /*
                bool m = false;
                while (m==false){
                    if(i==n-1){
                        puntos.pop_back();
                        m = true;
                    }else if(puntos.back() >= vec[i+1].first && puntos.back()<=vec[i+1].second){
                        m = true;
                    }else{
                        puntos.pop_back();
                        l--;
                        puntos.push_back(l);
                    }
                    }
                    */
            }
        }
    }
    printf("%i \n", puntos.size());
    for(int punto : puntos){
        std::cout<< punto << " ";
    }
}

int main() {
    int n = 0;
    std::cin >> n;
    std::vector <std::pair<int,int>> valores;

    for(int i = 0; i < n ; i++){
        int a = 0;
        int b = 0;
        std::cin >> a >> b;
        valores.emplace_back(a,b);
    }
    std::sort(valores.begin(), valores.end(), wayToSort);

    CollectingSigantures(n,valores);
    return 0;
}
