package main

import (
	"fmt"
)

func lastDigit(n int64) int64{
// write your code here
	fibo := make([]int64,n+1)
	fibo[0] = 0
	fibo[1] = 1
	for i:=2; int64(i)<=n;i++{
	fibo[i] = (fibo[i-1] + fibo[i-2])% 10
	}
	return fibo[n]
}

func LastDigitSquaresFibo(a int64) int64{
	var f int64 = 0
	var l int64 = 0
	if a == 0{

	}else{
		a = a % 60000
		f  = lastDigit(a)
		l  = lastDigit(a+1)
	}
	return (f * l)%10
}

func main() {
	var a int64 = 0
	fmt.Scan(&a)
	fmt.Println(LastDigitSquaresFibo(a))
}
