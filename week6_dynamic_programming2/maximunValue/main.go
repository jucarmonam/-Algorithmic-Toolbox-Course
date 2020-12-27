package main

import (
	"fmt"
	"math"
	"strconv"
)


func MinAndMax(i int, j int, opr []string, m [][]int, M [][]int)(float64, float64){
	var min = math.MaxFloat64
	var max = float64(math.MinInt64)
	for k:=i ; k <= j-1; k++{
		var a float64 = 0
		var b float64 = 0
		var c float64 = 0
		var d float64 = 0
		if opr[k] == "+" {
			a = float64(M[i][k] + M[k+1][j])
			b = float64(M[i][k] + m[k+1][j])
			c = float64(m[i][k] + M[k+1][j])
			d = float64(m[i][k] + m[k+1][j])
		}else if opr[k] == "-" {
			a = float64(M[i][k] - M[k+1][j])
			b = float64(M[i][k] - m[k+1][j])
			c = float64(m[i][k] - M[k+1][j])
			d = float64(m[i][k] - m[k+1][j])
		}else if opr[k] == "*"{
			a = float64(M[i][k] * M[k+1][j])
			b = float64(M[i][k] * m[k+1][j])
			c = float64(m[i][k] * M[k+1][j])
			d = float64(m[i][k] * m[k+1][j])
		}
		var temp1 = math.Min(min,a)
		var temp2 = math.Min(b,c)
		var temp3 = math.Min(temp2,d)
		min = math.Min(temp1,temp3)

		var temp4 = math.Max(max,a)
		var temp5 = math.Max(b,c)
		var temp6 = math.Max(temp5,d)
		max = math.Max(temp4,temp6)
	}
	return min,max
}

func Parentheses(exp []int, opr []string)int{
	var n = len(exp)
	m := make([][]int,n)
	M := make([][]int,n)
	for i:= 0; i < n; i++{
		m[i] = make([]int, n)
		M[i] = make([]int, n)
	}
	for i:=0; i<n; i++ {
			m[i][i] = exp[i]
			M[i][i] = exp[i]
	}
	for s:= 0; s < n-1; s++ {
		for i:= 0; i < n - s - 1; i++ {
			var j = i + s + 1
			a, b := MinAndMax(i,j,opr,m,M)
			m[i][j] = int(a)
			M[i][j] = int(b)
		}
	}
	return M[0][n-1]
}

func main() {
	var a string
	_, _ = fmt.Scan(&a)
	num := []rune(a)
	exp  := make([]int,0)
	opr  := make([]string,0)
	for i:= 0; i < len(num); i++ {
		if i % 2 == 0{
			var b = string(num[i])
			i, _ := strconv.Atoi(b)
			exp = append(exp, i)
		}else{
			opr = append(opr, string(num[i]))
		}
	}

	fmt.Print(Parentheses(exp,opr))
}
