// slice()
function slice(array, begin, end) {
  let check = function(param) {
    return (param > array.length ? array.length : param);
  };

  let result = [];
  for (let index = check(begin); index < check(end); index += 1) {
    result.push(array[index]);
  }

  return result;
}

console.log(slice([1, 2, 3], 1, 2));               // [2]
console.log(slice([1, 2, 3], 2, 0));               // []
console.log(slice([1, 2, 3], 5, 1));               // []
console.log(slice([1, 2, 3], 0, 5));               // [1, 2, 3]

const arr1 = [1, 2, 3];
console.log(slice(arr1, 1, 3));                     // [2, 3]
console.log(arr1);                                  // [1, 2, 3]

// splice()
function splice(array, start, deleteCount, ...args) {
  start = start > array.length ? array.length : start;
  deleteCount = deleteCount > (array.length - start) ? (array.length - start) : deleteCount;

  let temporary = [];
  for (let counter = 0; counter < start; counter += 1) {
    temporary.push(array.shift());
  }

  let result = [];
  for (let counter = 1; counter <= deleteCount; counter += 1) {
    result.push(array.shift());
  }

  for (let index = args.length - 1; index >= 0; index -= 1) {
    array.unshift(args[index]);
  }

  temporary.forEach(value => array.unshift(value));
  return result;
}

// Really good solution by Christina Unger
function splice(array, start, deleteCount, ...values) {
  start       = Math.min(start, array.length);
  deleteCount = Math.min(deleteCount, array.length - start);

  let deleted = slice(array, start, start + deleteCount);
  let rest    = slice(array, start + deleteCount, array.length);

  array.length = start;
  array.push(...values);
  array.push(...rest);

  return deleted;
}

console.log(splice([1, 2, 3], 1, 2));              // [2, 3]
console.log(splice([1, 2, 3], 1, 3));              // [2, 3]
console.log(splice([1, 2, 3], 1, 0));              // []
console.log(splice([1, 2, 3], 0, 1));              // [1]
console.log(splice([1, 2, 3], 1, 0, 'a'));         // []

const arr2 = [1, 2, 3];
console.log(splice(arr2, 1, 1, 'two'));             // [2]
console.log(arr2);                                  // [1, "two", 3]

const arr3 = [1, 2, 3];
console.log(splice(arr3, 1, 2, 'two', 'three'));    // [2, 3]
console.log(arr3);                                  // [1, "two", "three"]

const arr4 = [1, 2, 3];
console.log(splice(arr4, 1, 0));                    // []
console.log(splice(arr4, 1, 0, 'a'));               // []
console.log(arr4);                                  // [1, "a", 2, 3]

const arr5 = [1, 2, 3];
console.log(splice(arr5, 0, 0, 'a'));               // []
console.log(arr5);                                  // ["a", 1, 2, 3]