const DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

function integerToString(integer) {
  let result = '';
  do {
    let remainder = integer % 10;
    integer = Math.floor(integer / 10);

    result = DIGITS[remainder] + result;
  } while (integer > 0);

  return result;
}

console.log(integerToString(4321));      // "4321"
console.log(integerToString(0));         // "0"
console.log(integerToString(5000));      // "5000"