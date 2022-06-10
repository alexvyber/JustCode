package main

import (
	"fmt"
	// "math/rand"
)

func main() {
for i := 0; i < 5; i++ {
        func(j int) {
            fmt.Println("printing", j, "from inside of an anonymous function")
        }(i)
    }
}
