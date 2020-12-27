package main

import (
	"fmt"
	"math"
)

func ThreeSequences(s1[] int,s2[] int,s3[] int)int{
	n,m,l := len(s1), len(s2), len(s3)
	D := make([][][]int, n+1)
	for i:= 0; i < n+1; i++{
		D[i] = make([][]int, m+1)
	}
	for i:= 0; i < n+1; i++{
		for j:=0; j < m+1; j++{
			D[i][j] = make([]int, l+1)
		}
	}

	for k:=1; k<l+1; k++{
		for j:=1; j<m+1; j++{
			for i:=1; i<n+1; i++{
				var insertion = float64(D[i][j][k-1])
				var deletion = float64(D[i][j-1][k])
				var manteiton = float64(D[i-1][j][k])
				var match = float64(D[i-1][j-1][k-1]+1)
				var mismatch = float64(D[i-1][j-1][k-1])

				if (s1[i-1] == s2[j-1]) && (s2[j-1] == s3[k-1]){
					var a = math.Max(insertion,deletion)
					var b = math.Max(match,deletion)
					var c = math.Max(deletion,manteiton)
					var d = math.Max(a,b)
					var e = math.Max(b,c)
					D[i][j][k] = int(math.Max(d,e))
				}else{
					var a = math.Max(insertion,deletion)
					var b = math.Max(mismatch,deletion)
					var c = math.Max(deletion,manteiton)
					var d = math.Max(a,b)
					var e = math.Max(b,c)
					D[i][j][k] = int(math.Max(d,e))
				}
			}
		}
	}

	return D[n][m][l]
}

func main() {
	var a int
	_, _ = fmt.Scan(&a)
	s1 := make([]int,a)
	for i:= 0; i < a; i++{
		var a int
		_, _ = fmt.Scan(&a)
		s1[i] = a
	}
	var b int
	_, _ = fmt.Scan(&b)
	s2 := make([]int,b)
	for i:= 0; i < b; i++{
		var b int
		_, _ = fmt.Scan(&b)
		s2[i] = b
	}
	var c int
	_, _ = fmt.Scan(&c)
	s3 := make([]int,c)
	for i:= 0; i < c; i++{
		var c int
		_, _ = fmt.Scan(&c)
		s3[i] = c
	}

	fmt.Print(ThreeSequences(s1,s2,s3))
}
