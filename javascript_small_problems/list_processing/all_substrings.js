function substrings(string) {
  let result = [];
  for (let index1 = 0; index1 < string.length; index1 += 1) {
    for (let index2 = index1; index2 < string.length; index2 += 1) {
      result.push(string.slice(index1, index2 + 1));
    }
  }

  return result;
}

// Further exploration
function substrings(string) {
  return [...string].flatMap((_, index1) => {
    let substring = string.slice(index1);
    return [...substring].map((_, index2) => substring.slice(0, index2 + 1))
  })
}

console.log(substrings('abcde'));

// returns
// [ "a", "ab", "abc", "abcd", "abcde",
//   "b", "bc", "bcd", "bcde",
//   "c", "cd", "cde",
//   "d", "de",
//   "e" ]