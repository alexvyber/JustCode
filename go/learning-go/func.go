package main

import (
	"fmt"
	// "math/rand"
	"errors"
)

func main() {
	one, two, _ := divShit(10, 9)
	fmt.Println(one, two)
	// fmt.Println( _three == nil )

}


func divShit(numerator int, denominator int) (int, int, error) {
	if denominator == 0 {
		return 0, 0, errors.New("cannot divide by zero")
	}
	return numerator / denominator, numerator % denominator, nil
}
