function staggeredCase(string) {
  let result = ''
  for (let index = 0; index < string.length; index += 1) {
    if (index % 2 === 0) {
      result += string[index].toUpperCase();
    } else {
      result += string[index].toLowerCase();
    }
  }

  return result;
}

// Alternate
function staggeredCase(string) {
  return [...string].map((char, index) => {
    if (index % 2 === 0) {
      return char.toUpperCase();
    } else {
      return char.toLowerCase();
    }
  }).join('');
}

console.log(staggeredCase('I Love Launch School!'));        // "I LoVe lAuNcH ScHoOl!"
console.log(staggeredCase('ALL_CAPS'));                     // "AlL_CaPs"
console.log(staggeredCase('ignore 77 the 4444 numbers'));   // "IgNoRe 77 ThE 4444 nUmBeRs"