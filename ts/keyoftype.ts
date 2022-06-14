type ObjectLiteralType = {
  val: "string";
  num: 2;
};

const obj = {
  val: "string",
  num: 12,
};

type one = Capitalize<keyof ObjectLiteralType>;
type two = typeof obj;

// const newOne: { one } = { val: "asdf" }

const newTwo: two = {
  val: "SSSSSSSSSSSSSSSSSSSSSSSSSS",
  num: 123123123123123,
};

type Obj = {
  a: "a";
  b: number;
};

// Infered type: "a" | number
type objType = Obj[keyof Obj];

const objNum: objType = 12;
const objA: objType = "a";
// Is not assignable to objTpye
const objNotA: objType = "b";
