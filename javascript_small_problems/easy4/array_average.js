function average(array) {
  let sum = 0;
  array.forEach(value => sum += value)

  return Math.floor(sum / array.length)
}

// Alternate
function average(array) {
  return Math.floor(array.reduce((sum, value) => sum + value) / array.length)
}

console.log(average([1, 5, 87, 45, 8, 8]));       // 25
console.log(average([9, 47, 23, 95, 16, 52]));    // 40