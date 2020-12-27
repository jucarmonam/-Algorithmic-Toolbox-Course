#include <iostream>
#include <vector>
#include <math.h>
#include <algorithm>
#include <time.h>


double ClosesPoints2(std::vector<std::pair<int,int>> points){
    double min = INT64_MAX;
    for (int i = 0; i < points.size(); ++i) {
        for (int j = i+1; j < points.size(); ++j) {
            double a = pow(points[i].first - points[j].first, 2);
            double b = pow(points[i].second - points[j].second, 2);
            double f = sqrt(a+b);
            if(f<min){
                min = f;
            }
        }
    }
    return min;
}

bool wayToSort(std::pair<int,int> a, std::pair<int,int> b) { return a.first < b.first; }
bool wayToSort2(std::pair<int,int> a, std::pair<int,int> b) { return a.second < b.second; }

double ClosesPoints(std::vector<std::pair<int,int>> points, int min, int max, double d){

    if(min >= max-2){
        for (int i = min; i <= max; ++i) {
            for (int j = i+1; j <= max; ++j) {
                double a = pow(points[i].first - points[j].first, 2);
                double b = pow(points[i].second - points[j].second, 2);
                double f = sqrt(a+b);
                if(f<d){
                    d = f;
                }
            }
        }
        /*
        double a = pow(points[min].first - points[max].first, 2);
        double b = pow(points[min].second - points[max].second, 2);
        double f = sqrt(a+b);
        if(f<d){
            return f;
        }
         */
    }else{
        double d1 = 0;
        double d2 = 0;
        int half = 0;
        if(((max-min)+1)%2==0){
            half = ((max-min)+1)/2;
            d1 = ClosesPoints(points, min, max-half, d);
            d2 = ClosesPoints(points, min+half, max, d);
        }else{
            half = ((max-min)+1)/2;
            d1 = ClosesPoints(points, min, max-half, d);
            d2 = ClosesPoints(points, min+half, max, d);
        }
        if(d1 < d2){
                d = d1;
        }else{
                d = d2;
        }
        std::vector<std::pair<int,int>> bar;
        int mide = points[min+half].first;
        std::copy_if (points.begin()+min, points.end(), std::back_inserter(bar), [&d,&mide](std::pair<int,int> i){return (abs(i.first)-abs(mide))<=d;} );
        std::sort(bar.begin(), bar.end(), wayToSort2);
        for(int i = 0; i < bar.size(); i++){
            for (int j = i+1; j < bar.size() && (bar[j].second - bar[i].second) < d; ++j) {
                double a = pow(bar[i].first - bar[j].first, 2);
                double b = pow(bar[i].second - bar[j].second, 2);
                double f = sqrt(a+b);
                if(f<d){
                    d = f;
                }
            }
        }
    }
    return d;
}

int main() {
    srand (time(NULL));

    int n = 0;
    std::cin>>n;
    std::vector<std::pair<int,int>> points;
    for(int i = 0; i < n; i++){
        int a,b;
        std::cin>>a>>b;
        std::pair<int,int> point;
        point.first = a;
        point.second = b;
        points.push_back(point);
    }

    std::sort(points.begin(), points.end(), wayToSort);
    double d = INT64_MAX;
    printf("%f",ClosesPoints(points, 0, points.size()-1, d));
    //ClosesPoints2(points);
    /*
    std::vector<std::pair<int,int>> bar;
    int mid = (points.size()-1)/2;
    int mide = points[mid].first;
    std::copy_if (points.begin(), points.end(), std::back_inserter(bar), [&d,&mide](std::pair<int,int> i){return (abs(i.first)-abs(mide))<=d;} );

    std::sort(bar.begin(), bar.end(), wayToSort2);
    double min = INT64_MAX;
    for(int i = 0; i < bar.size(); i++){
        for (int j = i+1; j < bar.size(); ++j) {
            double a = pow(bar[i].first - bar[j].first, 2);
            double b = pow(bar[i].second - bar[j].second, 2);
            double f = sqrt(a+b);
            if(f<min){
                min = f;
            }
        }
    }

    if(min<d){
        printf("%f ", min);
    }else{

        printf("%f ", d);
    }
*/
/*
    while(true){
        int n = rand() % 10 + 2;
        std::vector<std::pair<int,int>> points;
        for(int i = 0; i < n; i++){
            int a = rand() % 10;
            int b = rand() % 10;
            std::pair<int,int> point;
            point.first = a;
            point.second = b;
            points.push_back(point);
        }

        std::sort(points.begin(), points.end(), wayToSort);
        double d = INT64_MAX;
        double min = ClosesPoints(points, 0, points.size()-1, d);
        double min1 = ClosesPoints2(points);

        if(min==min1){
            printf("iguales \n");
        }else{
            printf("%f %f", min, min1);
            break;
        }
    }

*/
    return 0;
}
