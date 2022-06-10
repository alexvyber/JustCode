package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Here we GO")
	if false {
		os.Exit(0)
	} else {
		os.Exit(1)
	}
}
