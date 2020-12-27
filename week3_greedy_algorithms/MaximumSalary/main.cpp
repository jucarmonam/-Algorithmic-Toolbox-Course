#include <iostream>
#include <vector>
#include <math.h>

bool IsGreaterOrEqual(int digit, int maxDigit){
    bool res = true;

    std::string a = std::to_string(digit) + std::to_string(maxDigit);
    std::string b = std::to_string(maxDigit) + std::to_string(digit);

    int e = std::stoi(a);
    int f = std::stoi(b);

    if(e>=f){

    }else{
        res = false;
    }

    /*
    int div1 = floor(log10(digit)) + 1;
    int div2 = floor(log10(maxDigit)) + 1;

    if(div1 < div2){
        double d = pow(10, div1-1);
        int d1 = digit/d;
        int d2 = digit%10;

        double md = pow(10, div2-1);
        int md1 = maxDigit/md;
        int md2 = maxDigit%10;

        if(d1>md1){

        }else if(d1==md1){
            if(d1 > md2){
                if(d2 > md2){

                }else if(d2==md2){

                }else{
                    res = false;
                }
            }else if(d1 == md2){
                if(d2 > md1){

                }else if(d2 == md1){
                    res = false;
                }else{
                    res = false;
                }
            }else{
                res = false;
            }
        }else{
            res = false;
        }
    }else{
        double d = pow(10, div1-1);
        int d1 = digit/d;
        int d2 = digit%10;

        double md = pow(10, div2-1);
        int md1 = maxDigit/md;
        int md2 = maxDigit%10;

        if(md1>d1){
            res = false;
        }else if(md1==d1) {
            if (md1 > d2) {
                if (md2 > d2) {
                    res = false;
                } else if (md2 == d2 && maxDigit > digit && div1 == div2) {
                    res = false;
                } else if (md2 == d2 && div1 > div2) {
                    res = false;
                }else {

                }
            }else if(md1 == d2){
                if(md2 > d1){
                    res = false;
                }else if(md2 == d1){

                }else{

                }
            }else{

            }
        }else{

        }
    }




    /*
    if(d1 >= md1 && d1 >= md2){
        if(d2 >= md1 && d2 >= md2){

        }else{
            res = false;
        }
    }else{
        res = false;
    }
    */

    /*
    else{
        double a = floor(log10(digit)) + 1;
        double b = floor(log10(maxDigit)) + 1;
        double max = 0;
        if(a>b){
            max = a;
        }else{
            max = b;
        }

        double c = 0;
        double d = 0;
        int e = digit;
        int f = maxDigit;
        double ci1 = 0;
        double ci2 = 0;
        a = floor(log10(e)) + 1;
        b = floor(log10(f)) + 1;
        for(int i = 0; i < max; i++) {
            double ex1 = a - 1;
            double ex2 = b - 1;
            ci1 = pow(10, ex1);
            ci2 = pow(10, ex2);

            c = floor(e / ci1);
            d = floor(f / ci2);
            if (c < d) {
                res = false;
                break;
            } else if (d < c) {
                break;
            }


            if (e % int(ci1) == 0 && a == 1) {
                if (f > 0) {
                    res = false;
                    break;
                } else {
                    break;
                }
            } else {
                if(e % int(ci1)==0 && f % int(ci2)>0){
                    res = false;
                }else{
                    e = e % int(ci1);
                    a--;
                }
            }

            if (f % int(ci2) == 0 && b == 1) {
                if (e > 0) {
                    break;
                } else {
                    res = false;
                    break;
                }
            } else {
                if(f % int(ci2)==0 && e%int(ci1)>0){

                }else{
                    f = f % int(ci2);
                    b--;
                }
            }
        }
    }
    */
        /*
        e = e % int(ci1);
        f = f % int(ci2);

        if(e == 0 && a==1){
            e = digit;
            b--;
        }else if(f == 0 && b==1){
            f = maxDigit;
            a--;
        }else{
            a--;
            b--;
        }
         */
    //}

    //int a = log10(digit);
    //int c = digit/pow(10,a);

    /*
    if(c == 0 && d == 0){
        c = digit;
        d = maxDigit;
    }else if(c == 0){
        c = digit;
    }else if(d == 0){
        d = maxDigit;
    }

    if(c<d){
        res = false;
    }
    */
    return res;
}

std::string LargestNumber(std::vector<int> digits){
    std::string answer = "";
    int b = 0;
    while(digits.size()>0){
        int maxDigit = INT16_MIN;
        for(int i = 0; i < digits.size(); i++){
            if(IsGreaterOrEqual(digits[i], maxDigit)){
                maxDigit = digits[i];
                b = i;
            }
        }
        answer += std::to_string(maxDigit);
        digits.erase(digits.begin() + (b));
    }
    return answer;
}

int main() {


    int n = 0;
    std::cin >> n;
    std::vector<int> numbers;
    int nu = 0;
    for(int i = 0; i < n; i++){
        std::cin >> nu;
        numbers.push_back(nu);
    }




    std::cout << LargestNumber(numbers)<< std::endl;

    /*
    if(IsGreaterOrEqual(2,23) == true){
        printf("true");
    }else{
        printf("false");
    }
     */

    return 0;
}
