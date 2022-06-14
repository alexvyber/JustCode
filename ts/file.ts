function tap<T>(arg: T, fn: (x: T) => void): T {
  callback(arg);
  return arg;
}

const callback = <T>(arg: T): void => console.log("The arg is", arg);

const val1 = 12;
const val2 = "string";
const val3 = { prop: "value" };

// const call1 = tap(val1, callback)
// const call2 = tap(val2, callback)
// const call3 = tap(val3, callback)

// console.log(val1)
// console.log(val2)
// console.log(val3)

// console.log(call1)
// console.log(call2)
// console.log(call3)

const twos = [2, 2];
twos.push(2);
twos.push(2);
twos.push(2);
twos.push(2);
console.log(twos);

const threes = [3, 3, 3] as const;
threes.push(3);
