function isPalindrome(string) {
  return string === [...string].reverse().join('');
}

function isPalindromicNumber(number) {
  return isPalindrome(String(number));
}

console.log(isPalindromicNumber(34543));        // true
console.log(isPalindromicNumber(123210));       // false
console.log(isPalindromicNumber(22));           // true
console.log(isPalindromicNumber(5));            // true