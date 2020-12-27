package main

import (
	"fmt"
)

func PrimitiveCalculator(num int)(int, []int){
	res := make([]int, 0)

	//var ini int = 1
	var count int = 0
	for num > 1 {
		count++
		res = append(res,num)
		if num % 3 == 0{
			num /= 3
		}else if num % 2 == 0{
			var c1,c2 int
			c1,_ = PrimitiveCalculator(num/2)
			c2,_ = PrimitiveCalculator(num-1)
			if c1<c2{
				num /= 2
			}else{
				num -= 1
			}
		}else{
			num -= 1
		}
	}
	return count, res
}

func main() {
	var num int = 0
	fmt.Scan(&num)
	var count int = 0
	res := make([]int, 0)
	count, res = PrimitiveCalculator(num)
	res = append(res,1)
	fmt.Println(count)
	for i:= len(res) - 1; i >=0 ; i-- {
		fmt.Printf("%d ", res[i])
	}
}
