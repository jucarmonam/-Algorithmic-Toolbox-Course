package main

import (
	"fmt"
	"math"
)

func TwoSequences(s1[] int,s2[] int)int{
	n,m := len(s1), len(s2)
	D := make([][]int, n+1)
	for i:= 0; i < n+1; i++{
		D[i] = make([]int, m+1)
	}
	/*
	for i:= 0; i < n+1; i++{
		D[i][0] = 0
	}
	for j:= 0; j < m+1; j++{
		D[0][j] = 0
	}
*/
	for j:=1; j<m+1; j++{
		for i:=1; i<n+1; i++{
			var insertion = float64(D[i][j-1])
			var deletion = float64(D[i-1][j])
			var match = float64(D[i-1][j-1]+1)
			var mismatch = float64(D[i-1][j-1])

			if s1[i-1] == s2[j-1]{
				var a = math.Max(insertion,deletion)
				var b = math.Max(match,deletion)
				D[i][j] = int(math.Max(a,b))
			}else{
				var a = math.Max(insertion,deletion)
				var b = math.Max(mismatch,deletion)
				D[i][j] = int(math.Max(a,b))
			}
		}
	}

	return D[n][m]
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

	a = TwoSequences(s1,s2)
	b = TwoSequences(s1,s3)
	c = TwoSequences(s2,s3)

	var i = math.Min(float64(a),float64(b))
	var j = math.Min(float64(b),float64(c))
	res := int(math.Min(i,j))
	fmt.Print(res)

}
