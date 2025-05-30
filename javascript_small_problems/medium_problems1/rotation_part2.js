function rotateRightmostDigits(number, n) {
  let string = String(number);
  let array = [...string].map(digit => Number(digit));

  for (let index = string.length - 1; index >= string.length - n; index -= 1) {
    [array[string.length - 1], array[index]] = [array[index], array[string.length - 1]];
  }

  return Number(array.join(''));
}

// Better solution by Launch School
function rotateRightmostDigits(number, n) {
  let string = String(number);
  let firstPart = string.slice(0, string.length - n);
  let secondPart = string.slice(string.length - n);

  return Number(firstPart + rotateString(secondPart));
}

function rotateString(string) {
  return string.slice(1) + string[0];
}

console.log(rotateRightmostDigits(735291, 1));      // 735291
console.log(rotateRightmostDigits(735291, 2));      // 735219
console.log(rotateRightmostDigits(735291, 3));      // 735912
console.log(rotateRightmostDigits(735291, 4));      // 732915
console.log(rotateRightmostDigits(735291, 5));      // 752913
console.log(rotateRightmostDigits(735291, 6));      // 352917