// pop
function pop(array) {
  if (array.length === 0) return undefined;

  let lastIndex = array.length - 1;
  let lastElement = array[lastIndex];
  array.length = lastIndex;
  return lastElement;
}

const array1 = [1, 2, 3];
console.log(pop(array1));                        // 3
console.log(array1);                // [1, 2]
console.log(pop([]));                           // undefined
console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]

// push
function push(array, ...elements) {
  for (let element of elements) {
    array[array.length] = element;
  }

  return array.length;
}

const array2 = [1, 2, 3];
console.log(push(array2, 4, 5, 6));              // 6
console.log(array2);                // [1, 2, 3, 4, 5, 6]
console.log(push([1, 2], ['a', 'b']));          // 3
console.log(push([], 1));                       // 1
console.log(push([]));                          // 0