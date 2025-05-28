function substrings(string) {
  return [...string].flatMap((_, index1) => {
    let substring = string.slice(index1);
    return [...substring].map((_, index2) => substring.slice(0, index2 + 1))
  })
}

function reverse(string) {
  return [...string].reverse().join('');
}

function palindromes(string) {
  return substrings(string).filter(substring => {
    return (substring.length > 1 && substring === reverse(substring));
  })
}

console.log(palindromes('abcd'));       // []
console.log(palindromes('madam'));      // [ "madam", "ada" ]

console.log(palindromes('hello-madam-did-madam-goodbye'));
// returns
// [ "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
//   "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
//   "-madam-", "madam", "ada", "oo" ]

console.log(palindromes('knitting cassettes'));
// returns
// [ "nittin", "itti", "tt", "ss", "settes", "ette", "tt" ]