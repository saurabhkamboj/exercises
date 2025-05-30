function union(array1, array2) {
  let result = [...array1];
  array2.forEach(value => {
    if (!result.includes(value)) result.push(value);
  });

  return result;
}

// Alternate
function union(...args) {
  let result = [];
  args.flat().forEach(value => {
    if (!result.includes(value)) result.push(value);
  });

  return result;
}

console.log(union([1, 3, 5], [3, 6, 9]));    // [1, 3, 5, 6, 9]