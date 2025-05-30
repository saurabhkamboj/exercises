function repeater(string) {
  let result = '';
  [...string].forEach(value => result += (value.repeat(2)))
  return result;
}

console.log(repeater('Hello'));        // "HHeelllloo"
console.log(repeater('Good job!'));    // "GGoooodd  jjoobb!!"
console.log(repeater(''));             // ""