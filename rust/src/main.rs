fn add (a: i32, b: i32) -> i32 {
    a + b
}

fn main() {

    let result = add(3,3);
    let result2 = add(1000, 10);

    // println!("Resut is {} \nand Result 2 is {}", result, result2);

    let num = 101;

        if num > 100 {
            println!("{}", result);
        } else {
            println!("{}", result2);
        }

        let mut i = 0;

        loop {
            println!("I equals to {}", i);
            i = i + 1;
            if i == 5 {
                break;
            }
            }

        while i != 10 {
            println!("it's not");
            i = i + 1;
        }
}
