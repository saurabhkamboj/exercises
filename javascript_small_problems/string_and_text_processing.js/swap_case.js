function swapCase(string) {
  let result = ''
  for (let index = 0; index < string.length; index += 1) {
    if (/[a-z]/.test(string[index])) {
      result += string[index].toUpperCase();
    } else if (/[A-Z]/.test(string[index])) {
      result += string[index].toLowerCase();
    } else {
      result += string[index];
    }
  }

  return result;
}

console.log(swapCase('CamelCase'));              // "cAMELcASE"
console.log(swapCase('Tonight on XYZ-TV'));      // "tONIGHT ON xyz-tv"