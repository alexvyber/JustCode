use assert_cmd::Command;

#[test]
fn works() {
    let mut cmd = Command::cargo_bin("true").unwrap();
    cmd.assert().success();
    // let res = cmd.output();
    // assert!( res.is_ok() )
    let mut cmd = Command::cargo_bin("false").unwrap();
    cmd.assert().failure();
}


#[test]
fn false_shit() {
    let mut cmd = Command::cargo_bin("false").unwrap();
    cmd.assert().failure();
}

#[test]
fn runs() {
    let mut cmd = Command::cargo_bin("hello").unwrap();
    cmd.assert().success().stdout("Hello, world!\n");
}

