function digitList(number) {
  let string = String(number);
  let result = [];
  for (let index = 0; index < string.length; index += 1) {
    result.push(Number(string[index]));
  }

  return result;
}

// Further exploration
function digitList(number) {
  return [...String(number)].map(value => Number(value));
}

console.log(digitList(12345));       // [1, 2, 3, 4, 5]
console.log(digitList(7));           // [7]
console.log(digitList(375290));      // [3, 7, 5, 2, 9, 0]
console.log(digitList(444));         // [4, 4, 4]