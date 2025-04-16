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

function signedIntegerToString(integer) {
  if (integer < 0) {
    return '-' + integerToString(Math.abs(integer));
  } else if (integer > 0) {
    return '+' + integerToString(integer);
  } else {
    return integerToString(integer);
  }
}

// Better solution by Bob Rodes
function intToString(int) {
  let result = '';
  do {
    let strDigit = int % 10;
    result = STRING_DIGITS[strDigit] + result;
    int -= int % 10;
    int /= 10;
  } while (int > 0);
  return result;
}

function signedIntToString(int) {
  if (int === 0) return '0';
  result = intToString(Math.abs(int));
  return int < 0 ? '-' + result : '+' + result;
}

console.log(signedIntegerToString(4321));      // "+4321"
console.log(signedIntegerToString(-123));      // "-123"
console.log(signedIntegerToString(0));         // "0"
console.log(signedIntegerToString(-0));