function concat(array1, ...otherArgs) {
  let result = [];
  for (let element of array1) {
    result.push(element);
  }

  for (let arg of otherArgs) {
    if (Array.isArray(arg)) {
      for (let element of arg) {
        result.push(element);
      }
    } else {
      result.push(arg);
    }
  }

  return result;
}

console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));    // [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(concat([1, 2], 'a', ['one', 'two']));        // [1, 2, "a", "one", "two"]
console.log(concat([1, 2], ['three'], 4));               // [1, 2, "three", 4]