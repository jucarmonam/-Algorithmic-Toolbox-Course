package main

import (
	"fmt"
	"math"
)

func DPChange(money int, coins[3] int) int {
	var NumCoins int = 0
	MinNumCoins := make([]int, 0)
	MinNumCoins = append(MinNumCoins, 0)
	for m := 1; m <= money; m++{
		MinNumCoins = append(MinNumCoins, math.MaxInt64)
		for i := 0; i < len(coins); i++ {
			if m >= coins[i]{
				NumCoins = MinNumCoins[m-coins[i]]+1
				if NumCoins < MinNumCoins[m]{
					MinNumCoins[m] = NumCoins
				}
			}
		}
	}
	return MinNumCoins[money]
}

func main() {
	var num int = 0
	fmt.Scan(&num)
	coins := [3]int{1,3,4}

	fmt.Println(DPChange(num,coins))

}
