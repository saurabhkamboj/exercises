function interleave(array1, array2) {
  let copy1 = [...array1];
  let copy2 = [...array2];
  let result = [];

  for (let index = 0; index < (array1.length * 2); index += 1) {
    (index % 2 === 0) ? result.push(copy1.shift()) : result.push(copy2.shift());
  }

  return result;
}

// Better solution by Launch School
function interleave(array1, array2) {
  const result = [];
  for (let index = 0; index < array1.length; index += 1) {
    result.push(array1[index], array2[index]);
  }

  return result;
}

console.log(interleave([1, 2, 3], ['a', 'b', 'c']));    // [1, "a", 2, "b", 3, "c"]