function multisum(number) {
  let sum = 0;
  for (let current = 1; current <= number; current += 1) {
    if (current % 3 === 0 || current % 5 === 0) {
      sum += current;
    }
  }

  return sum;
}

// Alternate
function multisum(maxValue) {
  let sum = 0;
  for (let number = 1; number <= maxValue; number += 1) {
    if (number % 3 === 0 || number % 5 === 0) {
      sum += number;
    }
  }

  return sum;
}

console.log(multisum(3));       // 3
console.log(multisum(5));       // 8
console.log(multisum(10));      // 33
console.log(multisum(1000));    // 234168