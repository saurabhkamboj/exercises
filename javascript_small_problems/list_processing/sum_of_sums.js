function sumOfSums(array) {
  return array.reduce((acc, _, index) => {
    return (acc + array.slice(0, index + 1).reduce((acc, num) => acc + num));
  }, 0)
}

console.log(sumOfSums([3, 5, 2]));        // (3) + (3 + 5) + (3 + 5 + 2) --> 21
console.log(sumOfSums([1, 5, 7, 3]));     // (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) --> 36
console.log(sumOfSums([4]));              // 4
// sumOfSums([1, 2, 3, 4, 5]);  // 35