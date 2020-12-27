#include <iostream>
#include <vector>

int CarFueling(int d, int m, std::vector<int> stops){
    bool llego = false;
    int num = 0;
    int pos = m;
    int gas = m;
    while(llego == false){
        for(int i = 0; i<stops.size(); i++){
            if(d <= gas){
                llego = true;
                break;
            }else if(i+1 == stops.size()){
                if(stops[i] <= gas){
                    pos = stops[i];
                    gas = stops[i] + m;
                    num++;
                }else{
                    llego = true;
                    num = -1;
                    break;
                }
            }else if(stops[i+1] > gas && (i+2)!=stops.size()){
                if(stops[i] <= gas){
                    pos = stops[i];
                    gas = stops[i] + m;
                    num++;
                }else{
                    llego = true;
                    num = -1;
                    break;
                }
            }else if(pos == stops[stops.size()-1]){
                if(d <= gas){
                    llego = true;
                    break;
                }else{
                    llego = true;
                    num = -1;
                    break;
                }
            }else if((i+2)==stops.size() && stops[i+1] <= gas){
                pos = stops[i+1];
                gas = stops[i+1] + m;
                num++;
                if(d <= gas){
                    llego = true;
                    break;
                }else{
                    llego = true;
                    num = -1;
                    break;
                }
            }else if((i+2)==stops.size() && stops[i+1] > gas){
                if(stops[i] <= gas){
                    pos = stops[i];
                    gas = stops[i] + m;
                    num++;
                }else{
                    llego = true;
                    num = -1;
                    break;
                }
            }
        }

    }
    return num;
}

int main() {
    int d = 0;
    int m = 0;
    std::cin >> d >> m;
    int n = 0;
    std::cin >> n;
    std::vector<int> stops;
    for(int i = 0; i < n; i++){
        int s = 0;
        std::cin >> s;
        stops.push_back(s);
    }

    std::cout << CarFueling(d,m,stops) << std::endl;
    return 0;
}
