package main

import (
    "fmt"
    "sort"
)

func main () {
type Person struct {
    First string
    Last  string
    Age int
}

people := []Person{
    {"Shit", "Cunt", 90},
    {"Pussy", "Faggot", 30},
    {"gandoon", "Chmo", 80},
}

fmt.Println(people)


sort.Slice(people, func(i int, j int) bool {
    return people[i].Last < people[j].Last
})
fmt.Println(people)

sort.Slice(people, func(i int, j int) bool {
    return people[i].Age < people[j].Age
})
fmt.Println(people)

}
