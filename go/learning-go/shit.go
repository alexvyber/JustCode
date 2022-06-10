package main

import (
	"fmt"
	// "math/rand"
)

func main() {
	evenVals := []int{2, 4, 6, 8, 10}
	for i := 1; i < len(evenVals)-2; i++ {
		fmt.Println(i, evenVals[i])
	}
}
