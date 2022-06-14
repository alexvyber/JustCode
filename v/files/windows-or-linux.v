module main

fn main() {
    os := $if windows { 'Windows' } $else { 'Linux' }
    println('Hello, $os user!')
}
