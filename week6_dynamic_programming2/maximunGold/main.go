package main

import (
	"fmt"
)

func MaximumGold(W int, bars[] int) int {
	var n = len(bars)
	value := make([][]int, n)
	for i:= 0; i < n; i++{
		value[i] = make([]int, W+1)
	}
	for i:=1; i <= W; i++{
		for w:=1; w < n; w++{
			value[w][i] = value[w-1][i]
			if bars[w] <= i{
				var val = value[w-1][i-bars[w]] + bars[w]
				if value[w][i] < val {
					value[w][i] = val
				}
			}
		}
	}
	return value[n-1][W]
}

func main() {
	var w int
	_, _ = fmt.Scan(&w)
	var n int
	_, _ = fmt.Scan(&n)
	bars := make([]int,n+1)
	for i:= 0; i < n; i++{
		var a int
		_, _ = fmt.Scan(&a)
		bars[i+1] = a
	}
	fmt.Print(MaximumGold(w,bars))
}
