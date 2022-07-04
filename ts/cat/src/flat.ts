const nums = [1, 2, [3, 4], 5, [6], [7], 8, [9]];

// flatten(nums) = [ 1,2,3,4,5,6,7,8,9]
type NumsArray = (number | number[])[];
const flatten = (nums: NumsArray): number[] => {
  const flattend: number[] = [];

  for (const el of nums) {
    if (Array.isArray(el)) {
      flattend.push(...el);
    } else {
      flattend.push(el);
    }
  }
  return flattend;
};

const shit = flatten(nums);
console.log(shit);

type GenericArray<T> = (T | T[])[];
const genericFlatten = <T>(arr: GenericArray<T>) => {
  const flattend: T[] = [];

  for (const el of arr) {
    if (Array.isArray(el)) {
      flattend.push(...el);
    } else {
      flattend.push(el);
    }
  }
  return flattend;
};

const strs = ["asdf", ["asfffdf", "asdaaaaaaf"], "a"];

const genShit = genericFlatten(nums);
console.log(genShit);
console.log(genericFlatten(strs));

const isFlat = <T>(arr: (T | T[])[]): arr is T[] => !arr.some(Array.isArray);
console.log("Not flatted:", isFlat(nums));
console.log("Flatted", isFlat(shit));
