#include <iostream>

int twoSequences(int s1[],int len1, int s2[], int len2){
    int n = len1;
    int m = len2;
    int D[n+1][m+1];

    for(int i = 0; i < n+1; i++){
        D[i][0] = 0;
    }
    for (int j = 0; j < m+1; j++){
        D[0][j] = 0;
    }

    for(int j = 1; j<m+1; j++){
        for(int i = 1; i<n+1; i++){
            int insertion = D[i][j-1];
            int deletion = D[i-1][j];
            int match = D[i-1][j-1]+1;
            int mismatch = D[i-1][j-1];

            if(s1[i-1] == s2[j-1]){
                int a = std::max(insertion,deletion);
                int b = std::max(match,deletion);
                D[i][j] = std::max(a,b);
            }else{
                int a = std::max(insertion,deletion);
                int b = std::max(mismatch,deletion);
                D[i][j] = std::max(a,b);
            }
        }
    }
    return D[n][m];
}


int main() {
    int a;
    std::cin>>a;
    int s1[a];
    for(int i = 0; i < a; i++){
        int a;
        std::cin>>a;
        s1[i] = a;
    }
    int b;
    std::cin>>b;
    int s2[b];
    for(int i = 0; i < b; i++){
        int b;
        std::cin>>b;
        s2[i] = b;
    }
    int c;
    std::cin>>c;
    int s3[c];
    for(int i = 0; i < c; i++){
        int c;
        std::cin>>c;
        s3[i] = c;
    }

    int e = twoSequences(s1,a,s2,b);
    int f = twoSequences(s1,a,s3,c);
    int g = twoSequences(s2,b,s3,b);

    int i = std::min(e,f);
    int j = std::min(f,g);
    int res = std::min(i,j);
    printf("%i", res);

    return 0;
}
