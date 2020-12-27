#include <iostream>

int MoneyChange(float input){
    int number = 0;
    while(input > 0){
        float a = input/10;
        float b = input/5;
        if(a >= 1){
            int temp = input/10;
            number += temp;
            input = input - temp*10;
        }else if(b >= 1){
            int temp = input/5;
            number += temp;
            input = input - temp*5;
        }else{
            number += input;
            input -= input;
        }
    }
    return number;
}

int main() {
    float a = 0;
    std::cin >> a;
    std::cout << MoneyChange(a) << std::endl;
    return 0;
}
