module main
import time

fn greet() {
	time.sleep(100)
	println('shit')
}

fn main() {
	h := go greet()
	println(typeof(h).name)
    h.wait()
}
