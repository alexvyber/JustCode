package main

import (
  "bytes"
  "testing"
)

// TestCountWords tests the count function set to count words
func TestCountWords(t *testing.T) {
  b := bytes.NewBufferString("word1 word2 word3 word4\n")

  exp := 4

  res := count(b, false, false)

  if res != exp {
    t.Errorf("Expected %d, got %d instead.\n", exp, res)
  }
}

// TestCountLines tests the count function set to count words
func TestCountLines(t *testing.T) {
  b := bytes.NewBufferString("word1 word2 word3 word4\nshit more more\na lot of shit")

  exp := 3

  res := count(b, true, false)

  if res != exp {
    t.Errorf("Expected %d, got %d instead.\n", exp, res)
  }
}

// TestCountBytes tests the count function set to count words
func TestCountBytes(t *testing.T) {
myBytes := `exs/dotfiles/dot/dot-config/awesome/dark.lua<a1>l^S<a1>c^]^K<ce>bN<c1>k?<83><a1>f<c4>4/home/alexs/dotfiles/dot/dot-config/awesome/dark.lua<a1>l^Z<a1>c^]^K<ce>bN<c1>n?<83><a1>f<c4>4/home/a`
newBytes := `asedrfgtre`
  b := bytes.NewBufferString(myBytes)
  c := bytes.NewBufferString(newBytes)
  exp := 187
  more := 10

  res := count(b, false, true)
  res2 := count(c, false, true)
  if res2 != more {
    t.Errorf("Expected %d, got %d instead.\n", more, res2)
  }
  if res != exp {
    t.Errorf("Expected %d, got %d instead.\n", exp, res)
  }
}
