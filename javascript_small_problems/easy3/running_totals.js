function runningTotal(array) {
  return array.reduce((result, _, index) => {
    let total = array.slice(0, index + 1).reduce((sum, value) => sum + value);
    result.push(total);
    return result;
  }, []);
}

// Better alternate
function runningTotal(array) {
  let sum = 0;
  return array.map(value => {
    return (sum += value);
  })
}

// Manual alternate
function runningTotal(array) {
  let sum = 0;
  let result = [];
  for (let value of array) {
    sum += value;
    result.push(sum);
  }

  return result;
}

console.log(runningTotal([2, 5, 13]));             // [2, 7, 20]
console.log(runningTotal([14, 11, 7, 15, 20]));    // [14, 25, 32, 47, 67]
console.log(runningTotal([3]));                    // [3]
console.log(runningTotal([]));                     // []