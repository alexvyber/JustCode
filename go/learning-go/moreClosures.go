package main

import (
	"fmt"
	// "math/rand"
)

func main() {
	dermo := makeShit(4)
	moreDermo := makeShit(2)

	for i := 0 ; i <= 10 ; i++ {
		fmt.Println(dermo(i), moreDermo(i))

}
}

func makeShit( def int ) func(int) int {
	return func( userShit int ) int {
		return def * userShit
	}
}
