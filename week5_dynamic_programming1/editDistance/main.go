package main

import (
	"fmt"
	"math"
)

func EditDistance(A[] rune, B[] rune)int{
	n,m := len(A), len(B)
	D := make([][]int, n+1)
	for i:= 0; i < n+1; i++{
		D[i] = make([]int, m+1)
	}
	for i:= 0; i < n+1; i++{
		D[i][0] = i
	}
	for j:= 0; j < m+1; j++{
		D[0][j] = j
	}
	for j:=1; j<m+1; j++{
		for i:=1; i<n+1; i++{
			var insertion float64 = float64(D[i][j-1]+1)
			var deletion float64 = float64(D[i-1][j]+1)
			var match float64 = float64(D[i-1][j-1])
			var mismatch float64 = float64(D[i-1][j-1]+1)
			if string(A[i-1]) == string(B[j-1]){
				var a float64 = math.Min(insertion,deletion)
				var b float64 = math.Min(match,deletion)
				D[i][j] = int(math.Min(a,b))
			}else{
				var a float64 = math.Min(insertion,deletion)
				var b float64 = math.Min(mismatch,deletion)
				D[i][j] = int(math.Min(a,b))
			}
		}
	}
	/*
	for i:= 0; i < n+1; i++{
		for j:= 0; j < m+1; j++{
			fmt.Printf("%d ",D[i][j])
		}
		fmt.Println()
	}
	*/
	return D[n][m]
}

func main() {
	var a string
	var b string
	_, _ = fmt.Scan(&a)
	_, _ = fmt.Scan(&b)
	A := []rune(a)
	B := []rune(b)
	fmt.Println(EditDistance(A,B))
}
