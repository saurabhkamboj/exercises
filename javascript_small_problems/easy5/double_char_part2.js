function doubleConsonants(string) {
  let result = '';
  for (let value of string) {
    if (/[^aeiou\d\W]/i.test(value)) {
      result += value.repeat(2);
    } else {
      result += value;
    }
  }

  return result;
}

console.log(doubleConsonants('String'));          // "SSttrrinngg"
console.log(doubleConsonants('Hello-World!'));    // "HHellllo-WWorrlldd!"
console.log(doubleConsonants('July 4th'));        // "JJullyy 4tthh"
console.log(doubleConsonants(''));                // ""