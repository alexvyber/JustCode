enum Some {
  one,
  two,
  three,
  four,
}

function assertNever(val: never): never {
  throw Error(`Unexpected value ${val}`);
}

function convertNum(val: Some) {
  switch (val) {
    case Some.one:
      return 1;
    case Some.two:
      return 2;
    case Some.three:
      return 3;
    case Some.four:
      return 4;
    default:
      return assertNever(val);
  }
}
