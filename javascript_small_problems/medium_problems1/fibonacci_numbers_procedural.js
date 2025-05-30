function fibonacci(n) {
  let last = 1;
  let current = 1;
  let count = 2;

  while (count < n) {
    [last, current] = [current, last + current]
    count += 1
  }

  return current;
}

console.log(fibonacci(20));       // 6765
console.log(fibonacci(50));       // 12586269025
console.log(fibonacci(75));       // 2111485077978050