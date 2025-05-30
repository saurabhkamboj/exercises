// Solution by Launch School
function findFibonacciIndexByLength(length) {
  let first = 1n;
  let second = 1n;
  let count = 2n;
  let current;

  do {
    current = first + second;
    first = second;
    second = current;
    count += 1n
  } while (String(current).length < length);

  return count;
}

// Solution by Christopher Perkins
function findFibonacciIndexByLength(length) {
  let count = 2n;
  let [first, current] = [1n, 1n];

  while (String(current).length < length) {
    [first, current] = [current, first + current];
    count += 1n;
  }

  return count;
}

console.log(findFibonacciIndexByLength(2n) === 7n);    // 1 1 2 3 5 8 13
console.log(findFibonacciIndexByLength(3n) === 12n);   // 1 1 2 3 5 8 13 21 34 55 89 144
console.log(findFibonacciIndexByLength(10n) === 45n);
console.log(findFibonacciIndexByLength(16n) === 74n);
console.log(findFibonacciIndexByLength(100n) === 476n);
console.log(findFibonacciIndexByLength(1000n) === 4782n);
console.log(findFibonacciIndexByLength(10000n) === 47847n);

// The last example may take a minute or so to run.