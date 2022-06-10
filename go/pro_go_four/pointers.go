package main

import "fmt"

func main () {
  rirst := 100
  first := 100
  var second *int = &first

  first++
  fmt.Println("First:", rirst)
  fmt.Println("First:", first)
  fmt.Println("Second", *second)
}
