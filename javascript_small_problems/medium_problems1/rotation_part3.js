function rotateRightmostDigits(number, n) {
  let string = String(number);
  let firstPart = string.slice(0, string.length - n);
  let secondPart = string.slice(string.length - n);

  return Number(firstPart + rotateString(secondPart));
}

function rotateString(string) {
  return string.slice(1) + string[0];
}

function maxRotation(number) {
  let digits = String(number).length;
  let result = number;
  for (let n = digits; n > 0; n -= 1) {
    result = rotateRightmostDigits(result, n);
  }

  return result;
}

console.log(maxRotation(735291));          // 321579
console.log(maxRotation(3));               // 3
console.log(maxRotation(35));              // 53
console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
console.log(maxRotation(8703529146));      // 7321609845