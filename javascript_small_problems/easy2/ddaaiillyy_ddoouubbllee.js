function crunch(string) {
  let result = '';
  [...string].forEach(char => {
    if (result[result.length - 1] !== char) {
      result += char;
    }
  })

  return result;
}

// Alternate
function crunch(string) {
  return [...string].reduce((result, char) =>
    result.at(-1) !== char ? result + char : result
  , '');
}

console.log(crunch('ddaaiillyy ddoouubbllee'));    // "daily double"
console.log(crunch('4444abcabccba'));              // "4abcabcba"
console.log(crunch('ggggggggggggggg'));            // "g"
console.log(crunch('a'));                          // "a"
console.log(crunch(''));                           // ""