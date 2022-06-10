package main

import (
	"fmt"
	// "math/rand"
)

func main() {
	evenVals := []int{2, 4, 6, 8, 10}
	for i, v := range evenVals {
		if i == 0 {
			continue
		}
		if i == len(evenVals)-2 {
			break
		}
		fmt.Println(i, v)
	}
}
